package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgRegtype;

public interface CdgRegtypeMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgRegtype record);

    int insertSelective(CdgRegtype record);

    CdgRegtype selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgRegtype record);

    int updateByPrimaryKey(CdgRegtype record);
}