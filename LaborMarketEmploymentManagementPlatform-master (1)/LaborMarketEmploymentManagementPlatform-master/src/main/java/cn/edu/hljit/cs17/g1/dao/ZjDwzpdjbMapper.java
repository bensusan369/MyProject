package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjDwzpdjb;

public interface ZjDwzpdjbMapper {
    int deleteByPrimaryKey(String zpbh);

    int insert(ZjDwzpdjb record);

    int insertSelective(ZjDwzpdjb record);

    ZjDwzpdjb selectByPrimaryKey(String zpbh);

    int updateByPrimaryKeySelective(ZjDwzpdjb record);

    int updateByPrimaryKey(ZjDwzpdjb record);
}