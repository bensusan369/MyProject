package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdlProficiency;

public interface CdlProficiencyMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdlProficiency record);

    int insertSelective(CdlProficiency record);

    CdlProficiency selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdlProficiency record);

    int updateByPrimaryKey(CdlProficiency record);
}