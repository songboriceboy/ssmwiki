package com.ttc.ssm.mapper;

import com.ttc.ssm.po.Article_info;
import com.ttc.ssm.po.Article_info_true;

import java.util.List;

/**
 * Created by ttc on 17-1-3.
 */

public interface ArticleMapper
{
    public List<Article_info> GetAllArticles(int tid);
    public int InsertArticles(Article_info article_info);
    public int InsertTrueArticles(Article_info_true article_info);
    public int updateArticles(Article_info article_info);
    public int updateArticlesParentid(Article_info article_info);

    public int updateTrueArticles(Article_info_true article_info);

    public List<Article_info> GetChildNodes(Article_info article_info);
    public Article_info GetRootNode(int tid);
    public Article_info_true GetTrueArticle(int nID);
    public int DelArticles(int nID);
}
