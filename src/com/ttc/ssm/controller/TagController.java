package com.ttc.ssm.controller;

import com.ttc.ssm.po.Article_info;
import com.ttc.ssm.po.Article_info_true;
import com.ttc.ssm.po.Classroom;
import com.ttc.ssm.po.Tag_info;
import com.ttc.ssm.service.ArticleService;
import com.ttc.ssm.service.ClassRoomService;
import com.ttc.ssm.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/1/8.
 */
@Controller
@RequestMapping("/tag")
public class TagController {
    @Autowired
    private TagService tagService;
    @Autowired
    private ArticleService articleService;
    @RequestMapping("/show_all_tags")
    public ModelAndView GetAllTags()
    {
        List<Tag_info> lst = tagService.FindAllTag();
        ModelAndView mav = new ModelAndView();
        mav.addObject("tag_lst",lst);
        mav.setViewName("Tag/listAllTags");
        return mav;
    }
    @RequestMapping("/add_tag")
    public ModelAndView AddTag(Tag_info tagInfo)
    {
        tagService.AddTag(tagInfo);
        ModelAndView mav = new ModelAndView("forward:show_all_tags.action");

        Article_info ai = new Article_info();
        ai.setTagid(tagInfo.getId());
        ai.setText(tagInfo.getTag_name());
        ai.setParent("#");
        ai.setArticle_content("0");
        articleService.InsertArticles(ai);
        return mav;
    }

    @RequestMapping("/manage_tag")
    public ModelAndView ManageTag(int id)
    {

        ModelAndView mav = new ModelAndView();
        mav.addObject("tid",id);
        mav.setViewName("tree");
        return mav;
    }

    @RequestMapping("/manage_tag_baidu")
    public ModelAndView ManageBaiduTag(int id)
    {

        ModelAndView mav = new ModelAndView();
        mav.addObject("tid",id);
        mav.setViewName("tree_baidu");
        return mav;
    }
    @RequestMapping("/del_tag")
    public ModelAndView DelTag(int id)
    {
        tagService.DeleteTag(id);
        ModelAndView mav = new ModelAndView("forward:show_all_tags.action");
        return mav;
    }
    @RequestMapping("/modify_tag")
    public ModelAndView ModifyTag(int id)
    {
        Tag_info ti = tagService.GetTagInfobyId(id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("tag_info",ti);
        mav.setViewName("Tag/ModifyTag");
        return mav;
    }
    @RequestMapping("/update_tag")
    public ModelAndView ModifyTag(Tag_info tagInfo, HttpServletRequest request, @RequestParam MultipartFile items_pic)throws Exception
    {
        //原始名称
        String originalFilename = items_pic.getOriginalFilename();
//上传图片
        if(items_pic!=null && originalFilename!=null && originalFilename.length()>0){

            //存储图片的物理路径
            String pic_path = request.getServletContext().getRealPath("upload");

            //新的图片名称
            String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
            //新图片
            File newFile = new File(pic_path+"\\"+newFileName);

            //将内存中的数据写入磁盘
            items_pic.transferTo(newFile);

            //将新图片名称写到itemsCustom中
            tagInfo.setTag_picpath(newFileName);

        }
        tagInfo.setTag_desc("");
        tagService.UpdateTagInfo(tagInfo);
        List<Tag_info> lst = tagService.FindAllTag();
        ModelAndView mav = new ModelAndView();
        mav.addObject("tag_lst",lst);
        mav.setViewName("Tag/listAllTags");
        return mav;
    }
}
