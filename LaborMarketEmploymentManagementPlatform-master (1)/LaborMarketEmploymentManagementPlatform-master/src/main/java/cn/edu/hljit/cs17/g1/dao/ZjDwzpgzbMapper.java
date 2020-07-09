package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjDwzpgzb;

public interface ZjDwzpgzbMapper {
    int deleteByPrimaryKey(String zpgzbh);

    int insert(ZjDwzpgzb record);

    int insertSelective(ZjDwzpgzb record);

    ZjDwzpgzb selectByPrimaryKey(String zpgzbh);

    int updateByPrimaryKeySelective(ZjDwzpgzb record);

    int updateByPrimaryKey(ZjDwzpgzb record);
}