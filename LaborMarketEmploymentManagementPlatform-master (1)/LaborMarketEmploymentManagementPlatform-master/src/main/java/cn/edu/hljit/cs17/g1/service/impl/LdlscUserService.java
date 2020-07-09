package cn.edu.hljit.cs17.g1.service.impl;

import cn.edu.hljit.cs17.g1.dao.LdlscDao;
import cn.edu.hljit.cs17.g1.pojo.LdlscUser;
import cn.edu.hljit.cs17.g1.service.ILdlscUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LdlscUserService implements ILdlscUserService {
    @Autowired
    private LdlscDao ld;
    public List<LdlscUser> search(LdlscUser ldlscUser) {
        return ld.search(ldlscUser);
    }

    public int addLdlscUser(LdlscUser ldlscUser) {
        return ld.addLdlscUser(ldlscUser);
    }

    public int delLdlscUser(LdlscUser ldlscUser) {
        return ld.delLdlscUser(ldlscUser);
    }

    public LdlscUser getLdlscUser(LdlscUser ldlscUser) {
        return ld.getLdlscUser(ldlscUser);
    }

    public int updateLdlscUser(LdlscUser ldlscUser) {
        return ld.updateLdlscUser(ldlscUser);
    }

    public List<LdlscUser> checkloginname(LdlscUser ldlscUser){
        return ld.checkloginname(ldlscUser);
    }
    public  int  getcount(LdlscUser ldlscUser){
        return  ld.getcount(ldlscUser);
    }

    public  LdlscUser login(LdlscUser user){
        return ld.login(user);
    }

}
