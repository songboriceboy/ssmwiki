package com.ttc.ssm.controller;

import com.ttc.ssm.po.Tab_account;
import com.ttc.ssm.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by ttc on 16-12-30.
 */
@Controller
@RequestMapping("/account")
public class AccountController
{
    @Autowired
    private AccountService accountService;
    private String name;


    @RequestMapping("/make_card")
    public ModelAndView MakeCard(Tab_account ta)
    {
        accountService.InsertAccount(ta);

        ModelAndView mav = new ModelAndView();

        //request.setAttribute("msg",strMsg);
        mav.addObject("money", 0);
        mav.addObject("msg","开卡成功");
        //  mav.addObject("cardno",strCardNo);
        mav.setViewName("account/result");
        return mav;

    }

}
