package com.ttc.ssm.po;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Student_info",table="student_info")
public class Student_info {

  @AutoField(alias = "���", column = "id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "id", column = "A")
  private int id;

  @AutoField(alias = "student_name", column = "student_name", isRequired = true, length = 64)
  @ExcelVOAttribute(name = "student_name", column = "B")
  private String student_name;

  @AutoField(alias = "student_pass", column = "student_pass", isRequired = true, length = 64)
  @ExcelVOAttribute(name = "student_pass", column = "C")
  private String student_pass;

  @AutoField(alias = "class_id", column = "class_id", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "class_id", column = "D")
  private int class_id;


  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getStudent_name() {
    return student_name;
  }
  public void setStudent_name(String student_name){
    this.student_name = student_name;
  }
  public String getStudent_pass() {
    return student_pass;
  }
  public void setStudent_pass(String student_pass){
    this.student_pass = student_pass;
  }
  public int getClass_id() {
    return class_id;
  }
  public void setClass_id(int class_id){
    this.class_id = class_id;
  }
}
