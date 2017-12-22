package com.ttc.ssm.po;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Classroom",table="classroom")
public class Classroom {

  @AutoField(alias = "���", column = "id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "id", column = "A")
  private int id;

  @AutoField(alias = "classroom_name", column = "classroom_name", isRequired = true, length = 30)
  @ExcelVOAttribute(name = "classroom_name", column = "B")
  private String classroom_name;

  @AutoField(alias = "hold_student_num", column = "hold_student_num", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "hold_student_num", column = "C")
  private int hold_student_num;


  public int getId() {
    return id;
  }
  public void setId(int id){
    this.id = id;
  }
  public String getClassroom_name() {
    return classroom_name;
  }
  public void setClassroom_name(String classroom_name){
    this.classroom_name = classroom_name;
  }
  public int getHold_student_num() {
    return hold_student_num;
  }
  public void setHold_student_num(int hold_student_num){
    this.hold_student_num = hold_student_num;
  }
}
