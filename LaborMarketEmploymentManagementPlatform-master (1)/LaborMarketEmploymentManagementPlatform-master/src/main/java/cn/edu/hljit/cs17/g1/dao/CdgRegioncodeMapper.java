package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgRegioncode;

public interface CdgRegioncodeMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgRegioncode record);

    int insertSelective(CdgRegioncode record);

    CdgRegioncode selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgRegioncode record);

    int updateByPrimaryKey(CdgRegioncode record);
}