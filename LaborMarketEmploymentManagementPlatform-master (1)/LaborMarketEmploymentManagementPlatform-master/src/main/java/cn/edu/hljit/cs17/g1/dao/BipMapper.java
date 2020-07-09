package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.Bip;

public interface BipMapper {
    int deleteByPrimaryKey(String bipId);

     public int addBip(Bip bip);

    int insertSelective(Bip record);

//    Bip selectByPrimaryKey(String bipId);
    public Bip chaxun(Bip bip);
    int updateByPrimaryKeySelective(Bip record);

    int updateByPrimaryKey(Bip record);
}