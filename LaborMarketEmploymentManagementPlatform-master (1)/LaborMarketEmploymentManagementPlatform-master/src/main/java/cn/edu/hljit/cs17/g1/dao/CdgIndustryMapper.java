package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgIndustry;

import java.util.List;

public interface CdgIndustryMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgIndustry record);

    int insertSelective(CdgIndustry record);

    CdgIndustry selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgIndustry record);

    int updateByPrimaryKey(CdgIndustry record);

    List<CdgIndustry> getAll();
}