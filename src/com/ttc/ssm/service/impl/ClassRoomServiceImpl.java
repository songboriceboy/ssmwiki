package com.ttc.ssm.service.impl;

import com.ttc.ssm.mapper.ClassRoomMapper;
import com.ttc.ssm.po.Classroom;
import com.ttc.ssm.service.ClassRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ttc on 17-1-3.
 */
@Service
public class ClassRoomServiceImpl implements ClassRoomService
{
    @Autowired
    private ClassRoomMapper classRoomMapper;
    @Override
    public List<Classroom> FindAllClassRooms()
    {
        return classRoomMapper.FindAllClassRooms();
    }

    @Override
    public int AddClassRoom(Classroom classroom)
    {
        return classRoomMapper.AddClassRoom(classroom);
    }

    @Override
    public int DeleteClassRoom(int nID)
    {
        return classRoomMapper.DeleteClassRoom(nID);
    }

    @Override
    public Classroom GetClassroomInfobyId(int nID)
    {
        return classRoomMapper.GetClassroomInfobyId(nID);
    }

    @Override
    public int UpdateClassroomInfo(Classroom classroom)
    {
        return classRoomMapper.UpdateClassroomInfo(classroom);
    }
}
