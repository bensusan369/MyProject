package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgNation;

public interface CdgNationMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgNation record);

    int insertSelective(CdgNation record);

    CdgNation selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgNation record);

    int updateByPrimaryKey(CdgNation record);
}