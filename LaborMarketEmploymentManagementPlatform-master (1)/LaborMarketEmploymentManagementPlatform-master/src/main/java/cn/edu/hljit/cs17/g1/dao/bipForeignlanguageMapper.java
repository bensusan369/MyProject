package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.bipForeignlanguage;

public interface bipForeignlanguageMapper {
    int deleteByPrimaryKey(String bipFlId);

    int insert(bipForeignlanguage record);

    int insertSelective(bipForeignlanguage record);

    bipForeignlanguage selectByPrimaryKey(String bipFlId);

    int updateByPrimaryKeySelective(bipForeignlanguage record);

    int updateByPrimaryKey(bipForeignlanguage record);
}