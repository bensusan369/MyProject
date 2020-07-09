package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjTjxxb;

public interface ZjTjxxbMapper {
    int deleteByPrimaryKey(String tjxid);

    int insert(ZjTjxxb record);

    int insertSelective(ZjTjxxb record);

    ZjTjxxb selectByPrimaryKey(String tjxid);

    int updateByPrimaryKeySelective(ZjTjxxb record);

    int updateByPrimaryKey(ZjTjxxb record);
}