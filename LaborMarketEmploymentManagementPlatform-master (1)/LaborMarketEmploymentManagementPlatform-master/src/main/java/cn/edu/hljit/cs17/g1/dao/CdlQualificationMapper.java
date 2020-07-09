package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdlQualification;

public interface CdlQualificationMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdlQualification record);

    int insertSelective(CdlQualification record);

    CdlQualification selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdlQualification record);

    int updateByPrimaryKey(CdlQualification record);
}