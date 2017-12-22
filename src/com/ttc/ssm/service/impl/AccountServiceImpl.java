package com.ttc.ssm.service.impl;

import com.ttc.ssm.mapper.AccountMapper;
import com.ttc.ssm.po.Tab_account;
import com.ttc.ssm.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ttc on 16-12-30.
 */
@Service
public class AccountServiceImpl implements AccountService
{
    @Autowired
    private AccountMapper accountMapper;

    public int InsertAccount(Tab_account tc)
    {
        return accountMapper.InsertAccount(tc);
    }
}
