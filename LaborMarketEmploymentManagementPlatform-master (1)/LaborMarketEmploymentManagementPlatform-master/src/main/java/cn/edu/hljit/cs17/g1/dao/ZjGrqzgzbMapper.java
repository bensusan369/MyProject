package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.ZjGrqzgzb;

public interface ZjGrqzgzbMapper {
    int deleteByPrimaryKey(String qzgzbh);

    int insert(ZjGrqzgzb record);

    int insertSelective(ZjGrqzgzb record);

    ZjGrqzgzb selectByPrimaryKey(String qzgzbh);

    int updateByPrimaryKeySelective(ZjGrqzgzb record);

    int updateByPrimaryKey(ZjGrqzgzb record);
}