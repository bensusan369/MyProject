package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgMarriageDao;
import cn.edu.hljit.cs17.g1.dao.CdlProficiencyDao;
import cn.edu.hljit.cs17.g1.pojo.CdlProficiency;
import cn.edu.hljit.cs17.g1.service.ICdgMarriageService;
import cn.edu.hljit.cs17.g1.service.ICdlProficiencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdlProficiencyService implements ICdlProficiencyService {
    @Autowired
    private CdlProficiencyDao cd;
    public List<CdlProficiency> getAll() {
        return cd.getAll();
    }
}
