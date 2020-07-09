package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjTjxxhzb;

public interface ZjTjxxhzbMapper {
    int deleteByPrimaryKey(String tjxid);

    int insert(ZjTjxxhzb record);

    int insertSelective(ZjTjxxhzb record);

    ZjTjxxhzb selectByPrimaryKey(String tjxid);

    int updateByPrimaryKeySelective(ZjTjxxhzb record);

    int updateByPrimaryKey(ZjTjxxhzb record);
}