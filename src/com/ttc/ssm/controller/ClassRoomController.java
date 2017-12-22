package com.ttc.ssm.controller;

import com.ttc.ssm.po.Classroom;
import com.ttc.ssm.service.ClassRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by ttc on 17-1-3.
 */
@Controller
@RequestMapping("/classroom")
public class ClassRoomController
{
    @Autowired
    private ClassRoomService classRoomService;

    @RequestMapping("/list_classroom")
    public ModelAndView GetAllClassRooms()
    {
        List<Classroom> lst = classRoomService.FindAllClassRooms();
        ModelAndView mav = new ModelAndView();
        mav.addObject("classroom_lst",lst);
        mav.setViewName("classroom/listAllClassRooms");
        return mav;
    }
    @RequestMapping("/add_classroom")
    public ModelAndView AddClassRoom(Classroom classroom)
    {
        classRoomService.AddClassRoom(classroom);
        ModelAndView mav = new ModelAndView("forward:list_classroom.action");

        return mav;
    }
    @RequestMapping("/del_classroom")
    public ModelAndView DelClassRoom(int id)
    {
        classRoomService.DeleteClassRoom(id);
        ModelAndView mav = new ModelAndView("forward:list_classroom.action");

        return mav;
    }

    @RequestMapping("/update_classroom")
    public ModelAndView SaveClassRoom(Classroom classroom)
    {

        classRoomService.UpdateClassroomInfo(classroom);
        ModelAndView mav = new ModelAndView("forward:list_classroom.action");

        return mav;


    }

    @RequestMapping("/modify_classroom")
    public ModelAndView GetClassRoomByID(int id)
    {
        Classroom classroom = classRoomService.GetClassroomInfobyId(id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("classroom",classroom);
        mav.setViewName("classroom/ModifyClassRoom");

        return mav;
    }



}
