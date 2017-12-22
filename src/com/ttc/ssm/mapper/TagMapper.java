package com.ttc.ssm.mapper;

import com.ttc.ssm.po.Tag_info;
import com.ttc.ssm.po.Tag_info;

import java.util.List;

/**
 * Created by Administrator on 2017/1/8.
 */
public interface TagMapper {
    public List<Tag_info> FindAllTag();
    public List<Tag_info> FindAllTagFront();

    public int AddTag(Tag_info Tag);
    public int DeleteTag(int nID);
    public Tag_info GetTagInfobyId(int nID);
    public int UpdateTagInfo(Tag_info Tag);
}
