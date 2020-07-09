package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgPoliticsaspect;

public interface CdgPoliticsaspectMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgPoliticsaspect record);

    int insertSelective(CdgPoliticsaspect record);

    CdgPoliticsaspect selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgPoliticsaspect record);

    int updateByPrimaryKey(CdgPoliticsaspect record);
}