package com.ttc.ssm.service.impl;

import com.ttc.ssm.mapper.UserMapper;
import com.ttc.ssm.po.Student_info;
import com.ttc.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/1/15.
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    UserMapper userMapper;
    @Override
    public Student_info Login(Student_info user) {
        return userMapper.Login(user);
    }
}
