package com.ttc.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.ttc.ssm.po.Article_info;
import com.ttc.ssm.po.Article_info_true;
import com.ttc.ssm.po.Tag_info;
import com.ttc.ssm.service.ArticleService;
import com.ttc.ssm.service.TagService;
import com.ttc.ssm.util.imgUploadBackData;
import com.ttc.ssm.util.picEncode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

/**
 * Created by ttc on 17-1-3.
 */
@Controller
@RequestMapping("/article")
public class ArticleController
{
    @Autowired
    private ArticleService articleService;
    @Autowired
    private TagService tagService;
    @RequestMapping("/getAll")
    public void GetAllArticles(HttpServletResponse response,int tid)
    {
        response.setContentType("application/json;charset=utf-8");
        List<Article_info> lst = articleService.GetAllArticles(tid);


        String strJson = JSON.toJSONString(lst);
        PrintWriter pw = null;
        try
        {
            pw = response.getWriter();
        } catch (IOException e)
        {
            e.printStackTrace();
        }
        pw.print(strJson);
        return ;
    }

    @RequestMapping("/getAllFront")
    public ModelAndView GetAllArticlesFront(HttpServletResponse response, @RequestParam(defaultValue = "0") int id,  @RequestParam(defaultValue = "10") int tid)
    {
        System.out.println("GetAllArticlesFront");
        Article_info ai = articleService.GetRootNode(tid);
        Article_info_true ait = new Article_info_true();
        Stack<Article_info> stack = new Stack<Article_info>();
        stack.add(ai);
        List<Article_info> llstt = new ArrayList<Article_info>();
        Article_info ret = new Article_info();

        if(0 == id)
        {
            ait =  articleService.GetTrueArticle(ai.getId());
        }
        while(!stack.empty())
        {
            Article_info aai = stack.pop();
            if(aai.getId() == id)
            {
                 ait =  articleService.GetTrueArticle(id);
            }
            llstt.add(aai);
            List<Article_info> llst = articleService.GetChildNodes(aai);
            for(Article_info aii : llst)
            {
                stack.add(aii);
            }
        }

        for(Article_info aaii : llstt)
        {
            System.out.println(aaii.getText());
        }

        List<Tag_info> lst = tagService.FindAllTagFront();
        response.setContentType("text/html;charset=utf-8");
        ModelAndView mav = new ModelAndView();
        mav.addObject("tags",lst);
        mav.addObject("article",ait);
        mav.addObject("articles", llstt);
        mav.addObject("tid", tid);
        mav.setViewName("article");
        return mav;
    }
    @RequestMapping("/add")
    public void addArticles(HttpServletResponse response,Article_info article_info)
    {
        System.out.println("addArticles");

        response.setContentType("application/json;charset=utf-8");
        articleService.InsertArticles(article_info);
        System.out.println(article_info.getId());
        String strJson = JSON.toJSONString(article_info);
        PrintWriter pw = null;
        try
        {
            pw = response.getWriter();
        } catch (IOException e)
        {
            e.printStackTrace();
        }
        pw.print(strJson);
        return ;
    }
    @RequestMapping("/del")
    public void delArticles(Article_info article_info)
    {
        System.out.println("delArticles");
        articleService.DelArticles(article_info.getId());
        return ;
    }
    @RequestMapping("/modify")
    public void modifyArticles(Article_info article_info)
    {
        System.out.println("modifyArticles");
        articleService.updateArticles(article_info);
        return ;
    }
    @RequestMapping("/move")
    public void moveArticles(Article_info article_info)
    {
        System.out.println("modifyArticles");
        articleService.updateArticlesParentid(article_info);
        return ;
    }
    @RequestMapping("/open_article")
    public void openArticle(HttpServletResponse response, Article_info article_info) throws IOException {
        System.out.println("openArticle");
        Article_info_true ait =  articleService.GetTrueArticle(article_info.getId());
        response.setContentType("application/json;charset=utf-8");
        String strJson = JSON.toJSONString(ait);
        response.getWriter().println(strJson);
    }
    @RequestMapping("/get_article")
    public void getArticle(HttpServletResponse response, int nID) throws IOException {
        System.out.println("openArticle");
        Article_info_true ait =  articleService.GetTrueArticle(nID);
        response.setContentType("application/json;charset=utf-8");
        String strJson = JSON.toJSONString(ait);
        response.getWriter().println(strJson);
    }


    @RequestMapping("/save_article")
    public void SaveArticle(HttpServletRequest request, HttpServletResponse response, Article_info_true article_info) throws IOException {

        String strTempaa = request.getParameter("test-editormd-html-code");

        article_info.setArticle_content(strTempaa);
        //代表是新增
        if(article_info.getId() == 0)
        {
            articleService.InsertTrueArticles(article_info);
        }
        else //代表是修改文章
        {
            articleService.updateTrueArticles(article_info);
        }
        response.setContentType("application/json;charset=utf-8");
        String strJson = JSON.toJSONString(article_info);
        response.getWriter().println(strJson);
    }

    @RequestMapping("/save_article_baidu")
    public void SaveArticleBaidu(HttpServletRequest request, HttpServletResponse response, Article_info_true article_info) throws IOException {

        String strTempaa = request.getParameter("editorValue");
      //  System.out.println(strTempaa);
        article_info.setMark_content("ueditor");
        article_info.setArticle_content(strTempaa);
        //代表是新增
        if(article_info.getId() == 0)
        {
            articleService.InsertTrueArticles(article_info);
        }
        else //代表是修改文章
        {
            articleService.updateTrueArticles(article_info);
        }
        response.setContentType("application/json;charset=utf-8");
        String strJson = JSON.toJSONString(article_info);
        response.getWriter().println(strJson);
    }
    @RequestMapping("/uploadimg")
    public void uploadImg(HttpServletRequest request, HttpServletResponse response, Article_info_true article_info) throws IOException {
        String strTemp = request.getParameter("base");
        System.out.println(strTemp);
        strTemp = strTemp.replace("data:image/png;base64,","");
        String strPath = request.getServletContext().getRealPath("/upload");
        String strUUid = UUID.randomUUID().toString();
        System.out.println(strPath);

        File file = new File(strPath);

        if(!file.exists())
        {
            file.mkdir();
        }
        String strSavePath = strPath+File.separator+strUUid+".jpg";
        picEncode.generateImage(strTemp,strSavePath);
        imgUploadBackData iubd = new imgUploadBackData();
        iubd.setPath("upload"+File.separator+strUUid+".jpg");
        iubd.setCode(1);
        String strJson = JSON.toJSONString(iubd);
        response.getWriter().println(strJson);
    }
}
