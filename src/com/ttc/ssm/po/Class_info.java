package com.ttc.ssm.po;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Class_info",table="class_info")
public class Class_info {

  @AutoField(alias = "���", column = "id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "id", column = "A")
  private int id;

  @AutoField(alias = "class_name", column = "class_name", isRequired = true, length = 30)
  @ExcelVOAttribute(name = "class_name", column = "B")
  private String class_name;


  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getClass_name() {
    return class_name;
  }
  public void setClass_name(String class_name){
    this.class_name = class_name;
  }
}
