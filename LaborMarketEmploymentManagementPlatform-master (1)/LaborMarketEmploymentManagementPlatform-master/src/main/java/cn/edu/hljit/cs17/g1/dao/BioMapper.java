package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.Bio;

import java.util.List;

public interface BioMapper {
    int deleteByPrimaryKey(String bioId);

    int insert(Bio record);

    int insertSelective(Bio record);

    Bio selectByPrimaryKey(String bioId);

    List<Bio> selectByBioNo(String bioNo);

    int updateByPrimaryKeySelective(Bio record);

    int updateByPrimaryKey(Bio record);
}