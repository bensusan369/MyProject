package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgDeformityDao;
import cn.edu.hljit.cs17.g1.dao.CdlRprtypeDao;
import cn.edu.hljit.cs17.g1.pojo.CdgDeformity;
import cn.edu.hljit.cs17.g1.pojo.CdlRprtype;
import cn.edu.hljit.cs17.g1.service.ICdgDeformityService;
import cn.edu.hljit.cs17.g1.service.ICdlRprtypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdlRprtypeService implements ICdlRprtypeService {
    @Autowired
    private CdlRprtypeDao cd;
    public List<CdlRprtype> getAll() {
        return cd.getAll();
    }
}

