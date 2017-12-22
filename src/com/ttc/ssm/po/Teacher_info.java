package com.ttc.ssm.po;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Teacher_info",table="teacher_info")
public class Teacher_info {

  @AutoField(alias = "���", column = "id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "id", column = "A")
  private int id;

  @AutoField(alias = "teacher_name", column = "teacher_name", isRequired = true, length = 30)
  @ExcelVOAttribute(name = "teacher_name", column = "B")
  private String teacher_name;


  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getTeacher_name() {
    return teacher_name;
  }
  public void setTeacher_name(String teacher_name){
    this.teacher_name = teacher_name;
  }
}
