package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgHealthstate;

public interface CdgHealthstateMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgHealthstate record);

    int insertSelective(CdgHealthstate record);

    CdgHealthstate selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgHealthstate record);

    int updateByPrimaryKey(CdgHealthstate record);
}