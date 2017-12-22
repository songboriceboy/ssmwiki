package com.ttc.ssm.service.impl;

import com.ttc.ssm.mapper.TagMapper;
import com.ttc.ssm.po.Tag_info;
import com.ttc.ssm.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/1/8.
 */
@Service
public class TagServiceImpl implements TagService {
    @Autowired
    private TagMapper TagMapper;

    @Override
    public List<Tag_info> FindAllTag() {
        return TagMapper.FindAllTag();
    }

    @Override
    public List<Tag_info> FindAllTagFront() {
        return TagMapper.FindAllTagFront();
    }

    @Override
    public int AddTag(Tag_info Tag)
    {
        return TagMapper.AddTag(Tag);
    }

    @Override
    public int DeleteTag(int nID)
    {
        return TagMapper.DeleteTag(nID);
    }

    @Override
    public Tag_info GetTagInfobyId(int nID)
    {
        return TagMapper.GetTagInfobyId(nID);
    }

    @Override
    public int UpdateTagInfo(Tag_info Tag)
    {
        return TagMapper.UpdateTagInfo(Tag);
    }
}
