package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdlOrgtype;

public interface CdlOrgtypeMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdlOrgtype record);

    int insertSelective(CdlOrgtype record);

    CdlOrgtype selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdlOrgtype record);

    int updateByPrimaryKey(CdlOrgtype record);
}