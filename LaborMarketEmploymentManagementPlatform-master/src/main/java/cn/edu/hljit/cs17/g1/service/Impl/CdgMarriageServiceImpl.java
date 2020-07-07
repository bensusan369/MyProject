package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgMarriageDao;
import cn.edu.hljit.cs17.g1.dao.CdgSexDao;
import cn.edu.hljit.cs17.g1.pojo.CdgMarriage;
import cn.edu.hljit.cs17.g1.service.ICdgMarriageService;
import cn.edu.hljit.cs17.g1.service.ICdgSexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdgMarriageService implements ICdgMarriageService {
    @Autowired
    private CdgMarriageDao cd;
    public List<CdgMarriage> getAll() {
        return cd.getAll();
    }
}
