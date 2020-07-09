package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.BipSkill;

public interface BipSkillMapper {
    int deleteByPrimaryKey(String bipSId);

    int insert(BipSkill record);

    int insertSelective(BipSkill record);

    BipSkill selectByPrimaryKey(String bipSId);

    int updateByPrimaryKeySelective(BipSkill record);

    int updateByPrimaryKey(BipSkill record);
}