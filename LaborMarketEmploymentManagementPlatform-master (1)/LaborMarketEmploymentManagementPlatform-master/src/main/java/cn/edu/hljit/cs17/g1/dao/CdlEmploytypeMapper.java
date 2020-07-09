package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdlEmploytype;

public interface CdlEmploytypeMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdlEmploytype record);

    int insertSelective(CdlEmploytype record);

    CdlEmploytype selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdlEmploytype record);

    int updateByPrimaryKey(CdlEmploytype record);
}