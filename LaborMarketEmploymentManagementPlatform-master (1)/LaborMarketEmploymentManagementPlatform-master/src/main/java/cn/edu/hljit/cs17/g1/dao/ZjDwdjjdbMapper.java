package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjDwdjjdb;

public interface ZjDwdjjdbMapper {
    int deleteByPrimaryKey(String dwdjjdbh);

    int insert(ZjDwdjjdb record);

    int insertSelective(ZjDwdjjdb record);

    ZjDwdjjdb selectByPrimaryKey(String dwdjjdbh);

    int updateByPrimaryKeySelective(ZjDwdjjdb record);

    int updateByPrimaryKey(ZjDwdjjdb record);
}