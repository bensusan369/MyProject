package cn.edu.hljit.cs17.g1.service;

import cn.edu.hljit.cs17.g1.pojo.LdlscUser;


import java.util.List;

public interface ILdlscUserService {
    //��ɾ�Ĳ�
    //��ѯ
    public List<LdlscUser> search(LdlscUser ldlscUser);
    //������Ӷ���
    public int addLdlscUser(LdlscUser ldlscUser);

    public int delLdlscUser(LdlscUser ldlscUser);

    public LdlscUser getLdlscUser(LdlscUser ldlscUser);
    public int updateLdlscUser(LdlscUser ldlscUser);

   public List<LdlscUser> checkloginname(LdlscUser ldlscUser);
    public  int  getcount(LdlscUser ldlscUser);
    public  LdlscUser login(LdlscUser user);

}
