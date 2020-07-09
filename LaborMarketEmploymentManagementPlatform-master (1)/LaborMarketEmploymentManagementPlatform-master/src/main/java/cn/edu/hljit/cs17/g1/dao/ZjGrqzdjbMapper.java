package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjGrqzdjb;

public interface ZjGrqzdjbMapper {
    int deleteByPrimaryKey(String qzbh);

    int insert(ZjGrqzdjb record);

    int insertSelective(ZjGrqzdjb record);

    ZjGrqzdjb selectByPrimaryKey(String qzbh);

    int updateByPrimaryKeySelective(ZjGrqzdjb record);

    int updateByPrimaryKey(ZjGrqzdjb record);
}