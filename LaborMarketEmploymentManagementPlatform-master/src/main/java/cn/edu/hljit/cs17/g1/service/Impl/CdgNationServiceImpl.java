package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgMarriageDao;
import cn.edu.hljit.cs17.g1.dao.CdgNationDao;
import cn.edu.hljit.cs17.g1.pojo.CdgNation;
import cn.edu.hljit.cs17.g1.service.ICdgMarriageService;
import cn.edu.hljit.cs17.g1.service.ICdgNationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdgNationService implements ICdgNationService {
    @Autowired
    private CdgNationDao cd;
    public List<CdgNation> getAll() {
        return cd.getAll();
    }
}
