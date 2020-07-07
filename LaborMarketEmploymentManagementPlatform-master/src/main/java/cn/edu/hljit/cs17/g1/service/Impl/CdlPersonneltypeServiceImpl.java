package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgDeformityDao;
import cn.edu.hljit.cs17.g1.dao.CdlPersonneltypeDao;
import cn.edu.hljit.cs17.g1.pojo.CdgDeformity;
import cn.edu.hljit.cs17.g1.pojo.CdlPersonneltype;
import cn.edu.hljit.cs17.g1.service.ICdgDeformityService;
import cn.edu.hljit.cs17.g1.service.ICdlPersonneltypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdlPersonneltypeService implements ICdlPersonneltypeService {
    @Autowired
    private CdlPersonneltypeDao cd;
    public List<CdlPersonneltype> getAll() {
        return cd.getAll();
    }
}

