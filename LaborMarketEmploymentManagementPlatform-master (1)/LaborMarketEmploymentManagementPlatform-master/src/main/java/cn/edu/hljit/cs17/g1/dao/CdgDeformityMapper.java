package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgDeformity;

public interface CdgDeformityMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgDeformity record);

    int insertSelective(CdgDeformity record);

    CdgDeformity selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgDeformity record);

    int updateByPrimaryKey(CdgDeformity record);
}