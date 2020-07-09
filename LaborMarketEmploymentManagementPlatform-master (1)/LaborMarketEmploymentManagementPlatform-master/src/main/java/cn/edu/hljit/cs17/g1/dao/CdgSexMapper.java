package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgSex;

public interface CdgSexMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgSex record);

    int insertSelective(CdgSex record);

    CdgSex selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgSex record);

    int updateByPrimaryKey(CdgSex record);
}