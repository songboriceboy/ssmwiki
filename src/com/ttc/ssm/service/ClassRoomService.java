package com.ttc.ssm.service;

import com.ttc.ssm.po.Classroom;

import java.util.List;

/**
 * Created by ttc on 17-1-3.
 */
public interface ClassRoomService
{
    public List<Classroom> FindAllClassRooms();
    public int AddClassRoom(Classroom classroom);
    public int DeleteClassRoom(int nID);
    public Classroom GetClassroomInfobyId(int nID);
    public int UpdateClassroomInfo(Classroom classroom);
}
