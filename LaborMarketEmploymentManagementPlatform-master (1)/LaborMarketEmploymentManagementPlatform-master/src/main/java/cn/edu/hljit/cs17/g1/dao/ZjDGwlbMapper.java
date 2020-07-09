package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjDGwlb;

public interface ZjDGwlbMapper {
    int deleteByPrimaryKey(String dmid);

    int insert(ZjDGwlb record);

    int insertSelective(ZjDGwlb record);

    ZjDGwlb selectByPrimaryKey(String dmid);

    int updateByPrimaryKeySelective(ZjDGwlb record);

    int updateByPrimaryKey(ZjDGwlb record);
}