package com.ttc.ssm.po;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Article_info",table="article_info")
public class Article_info {

  @AutoField(alias = "���", column = "id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "id", column = "A")
  private int id;

  @AutoField(alias = "name", column = "name", isRequired = true, length = 200)
  @ExcelVOAttribute(name = "name", column = "B")
  private String text;

  @AutoField(alias = "article_content", column = "article_content", length = 65535)
  @ExcelVOAttribute(name = "article_content", column = "C")
  private String article_content;

  @AutoField(alias = "pid", column = "pid", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "pid", column = "D")
  private String parent;
  private int tagid;

  public int getTagid() {
    return tagid;
  }

  public void setTagid(int tagid) {
    this.tagid = tagid;
  }



  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getText() {
    return text;
  }
  public void setText(String article_title){
    this.text = article_title;
  }
  public String getArticle_content() {
    return article_content;
  }
  public void setArticle_content(String article_content){
    this.article_content = article_content;
  }
  public String getParent() {
    return parent;
  }
  public void setParent(String pid){
    this.parent = pid;
  }
}
