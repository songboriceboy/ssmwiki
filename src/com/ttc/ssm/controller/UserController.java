package com.ttc.ssm.controller;

import com.ttc.ssm.po.Student_info;
import com.ttc.ssm.service.UserService;
import com.ttc.ssm.util.CreateMD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/1/15.
 */

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public ModelAndView Login(Student_info user, HttpSession hs) throws Exception{


        user.setStudent_pass(CreateMD5.getMd5(user.getStudent_pass()));
        Student_info tui = userService.Login(user);
        if(tui != null)
        {

            hs.setAttribute("userinfo",user.getStudent_name()+","+user.getStudent_pass());
            return new ModelAndView("redirect:/jsp/index.jsp");


        }
        else
        {
            ModelAndView mav = new ModelAndView();
            mav.addObject("message", "登录失败");
            mav.setViewName("login");
            return mav;
        }
    }
}
