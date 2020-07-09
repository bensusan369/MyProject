package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdlSpecialty;

public interface CdlSpecialtyMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdlSpecialty record);

    int insertSelective(CdlSpecialty record);

    CdlSpecialty selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdlSpecialty record);

    int updateByPrimaryKey(CdlSpecialty record);
}