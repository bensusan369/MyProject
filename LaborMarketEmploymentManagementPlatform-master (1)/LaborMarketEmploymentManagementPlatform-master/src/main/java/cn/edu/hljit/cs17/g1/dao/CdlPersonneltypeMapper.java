package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdlPersonneltype;

public interface CdlPersonneltypeMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdlPersonneltype record);

    int insertSelective(CdlPersonneltype record);

    CdlPersonneltype selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdlPersonneltype record);

    int updateByPrimaryKey(CdlPersonneltype record);
}