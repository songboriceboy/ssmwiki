package com.ttc.ssm.po;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Course_info",table="course_info")
public class Course_info {

  @AutoField(alias = "���", column = "id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "id", column = "A")
  private int id;

  @AutoField(alias = "course_name", column = "course_name", isRequired = true, length = 30)
  @ExcelVOAttribute(name = "course_name", column = "B")
  private String course_name;


  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getCourse_name() {
    return course_name;
  }
  public void setCourse_name(String course_name){
    this.course_name = course_name;
  }
}
