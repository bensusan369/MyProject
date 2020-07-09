package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgEducationallevel;

public interface CdgEducationallevelMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgEducationallevel record);

    int insertSelective(CdgEducationallevel record);

    CdgEducationallevel selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgEducationallevel record);

    int updateByPrimaryKey(CdgEducationallevel record);
}