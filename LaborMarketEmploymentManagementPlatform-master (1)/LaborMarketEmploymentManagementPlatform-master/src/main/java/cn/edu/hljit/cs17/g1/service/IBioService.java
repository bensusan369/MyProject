package cn.edu.hljit.cs17.g1.service;

import cn.edu.hljit.cs17.g1.pojo.Bio;

import java.util.List;

public interface IBioService {
    int insertSelective(Bio record);
    List<Bio> selectByBioNo(String bioNo);
    int updateByPrimaryKeySelective(Bio record);
}
