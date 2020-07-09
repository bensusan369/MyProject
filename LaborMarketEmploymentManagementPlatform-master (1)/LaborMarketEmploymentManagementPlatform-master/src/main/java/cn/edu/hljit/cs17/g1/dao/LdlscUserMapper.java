package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.LdlscUser;

public interface LdlscUserMapper {
    int deleteByPrimaryKey(String userId);

    int insert(LdlscUser record);

    int insertSelective(LdlscUser record);

    LdlscUser selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(LdlscUser record);

    int updateByPrimaryKey(LdlscUser record);
}