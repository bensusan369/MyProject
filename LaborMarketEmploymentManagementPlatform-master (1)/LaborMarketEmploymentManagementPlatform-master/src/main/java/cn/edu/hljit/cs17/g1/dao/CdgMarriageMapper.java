package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgMarriage;

public interface CdgMarriageMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgMarriage record);

    int insertSelective(CdgMarriage record);

    CdgMarriage selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgMarriage record);

    int updateByPrimaryKey(CdgMarriage record);
}