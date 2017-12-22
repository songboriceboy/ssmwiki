package com.ttc.ssm.service;

import com.ttc.ssm.po.Student_info;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/1/15.
 */

public interface UserService {
    public Student_info Login(Student_info user);
}
