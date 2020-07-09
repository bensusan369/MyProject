package cn.edu.hljit.cs17.g1.service.impl;


import cn.edu.hljit.cs17.g1.dao.BipMapper;
import cn.edu.hljit.cs17.g1.pojo.Bip;
import cn.edu.hljit.cs17.g1.service.IBipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BipServiceImpl implements IBipService {
    @Autowired

    public BipMapper bm;
    public Bip chaxun(Bip bip){
        return bm.chaxun(bip);
    }
    public int addBip(Bip bip){
        return bm.addBip(bip);
    }

}
