package com.ttc.ssm.service.impl;

import com.ttc.ssm.mapper.ArticleMapper;
import com.ttc.ssm.po.Article_info;
import com.ttc.ssm.po.Article_info_true;
import com.ttc.ssm.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ttc on 17-1-3.
 */
@Service
public class ArticleServiceImpl implements ArticleService
{
    @Autowired
    ArticleMapper articleMapper;

    @Override
    public List<Article_info> GetAllArticles(int tid)
    {
        return articleMapper.GetAllArticles(tid);
    }

    @Override
    public int InsertArticles(Article_info article_info) {
        return articleMapper.InsertArticles(article_info);
    }

    @Override
    public int DelArticles(int nID) {
        return articleMapper.DelArticles(nID);
    }

    @Override
    public int updateArticles(Article_info article_info) {
        return articleMapper.updateArticles(article_info);
    }

    @Override
    public int updateArticlesParentid(Article_info article_info) {
        return articleMapper.updateArticlesParentid(article_info);
    }

    @Override
    public List<Article_info> GetChildNodes(Article_info article_info) {
        return articleMapper.GetChildNodes(article_info);
    }

    @Override
    public Article_info GetRootNode(int tid) {
        return articleMapper.GetRootNode(tid);
    }

    @Override
    public Article_info_true GetTrueArticle(int nID) {
        return articleMapper.GetTrueArticle(nID);
    }

    @Override
    public int InsertTrueArticles(Article_info_true article_info) {
        return articleMapper.InsertTrueArticles(article_info);
    }

    @Override
    public int updateTrueArticles(Article_info_true article_info) {
        return articleMapper.updateTrueArticles(article_info);
    }

}
