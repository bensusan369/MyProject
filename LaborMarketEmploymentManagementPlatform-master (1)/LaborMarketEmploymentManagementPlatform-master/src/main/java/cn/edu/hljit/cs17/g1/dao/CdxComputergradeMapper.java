package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdxComputergrade;

public interface CdxComputergradeMapper {
    int deleteByPrimaryKey(String cdId);

    int insert(CdxComputergrade record);

    int insertSelective(CdxComputergrade record);

    CdxComputergrade selectByPrimaryKey(String cdId);

    int updateByPrimaryKeySelective(CdxComputergrade record);

    int updateByPrimaryKey(CdxComputergrade record);
}