package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjGrqzdjjdb;

public interface ZjGrqzdjjdbMapper {
    int deleteByPrimaryKey(String grdjjdbh);

    int insert(ZjGrqzdjjdb record);

    int insertSelective(ZjGrqzdjjdb record);

    ZjGrqzdjjdb selectByPrimaryKey(String grdjjdbh);

    int updateByPrimaryKeySelective(ZjGrqzdjjdb record);

    int updateByPrimaryKey(ZjGrqzdjjdb record);
}