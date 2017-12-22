package com.ttc.ssm.po;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Article_info_true",table="article_info_true")
public class Article_info_true {

  @AutoField(alias = "���", column = "id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "id", column = "A")
  private int id;

  @AutoField(alias = "article_title", column = "article_title", isRequired = true, length = 30)
  @ExcelVOAttribute(name = "article_title", column = "B")
  private String article_title;

  @AutoField(alias = "article_content", column = "article_content", length = 65535)
  @ExcelVOAttribute(name = "article_content", column = "C")
  private String article_content;

  @AutoField(alias = "nodeid", column = "nodeid", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "nodeid", column = "D")
  private int nodeid;
  private String mark_content;
    public String getMark_content() {
        return mark_content;
    }

    public void setMark_content(String mark_content) {
        this.mark_content = mark_content;
    }



  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getArticle_title() {
    return article_title;
  }
  public void setArticle_title(String article_title){
    this.article_title = article_title;
  }
  public String getArticle_content() {
    return article_content;
  }
  public void setArticle_content(String article_content){
    this.article_content = article_content;
  }
  public int getNodeid() {
    return nodeid;
  }
  public void setNodeid(int nodeid){
    this.nodeid = nodeid;
  }
}
