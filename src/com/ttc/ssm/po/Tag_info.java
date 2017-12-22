package com.ttc.ssm.po;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Tag_info",table="tag_info")
public class Tag_info {

  @AutoField(alias = "���", column = "id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "id", column = "A")
  private int id;

  @AutoField(alias = "tag_name", column = "tag_name", isRequired = true, length = 30)
  @ExcelVOAttribute(name = "tag_name", column = "B")
  private String tag_name;

  public String getTag_picpath() {
    return tag_picpath;
  }

  public void setTag_picpath(String tag_picpath) {
    this.tag_picpath = tag_picpath;
  }

  public String getTag_desc() {
    return tag_desc;
  }

  public void setTag_desc(String tag_desc) {
    this.tag_desc = tag_desc;
  }

  private String tag_picpath;
  private String tag_desc;

  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getTag_name() {
    return tag_name;
  }
  public void setTag_name(String tag_name){
    this.tag_name = tag_name;
  }
}
