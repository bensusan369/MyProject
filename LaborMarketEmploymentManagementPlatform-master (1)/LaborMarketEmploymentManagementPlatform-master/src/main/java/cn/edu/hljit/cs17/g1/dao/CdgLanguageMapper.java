package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgLanguage;

public interface CdgLanguageMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdgLanguage record);

    int insertSelective(CdgLanguage record);

    CdgLanguage selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdgLanguage record);

    int updateByPrimaryKey(CdgLanguage record);
}