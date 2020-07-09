package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdlRprtype;

public interface CdlRprtypeMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdlRprtype record);

    int insertSelective(CdlRprtype record);

    CdlRprtype selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdlRprtype record);

    int updateByPrimaryKey(CdlRprtype record);
}