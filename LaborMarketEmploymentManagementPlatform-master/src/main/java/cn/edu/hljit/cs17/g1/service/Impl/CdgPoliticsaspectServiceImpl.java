package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgDeformityDao;
import cn.edu.hljit.cs17.g1.dao.CdgPoliticsaspectDao;
import cn.edu.hljit.cs17.g1.pojo.CdgDeformity;
import cn.edu.hljit.cs17.g1.pojo.CdgPoliticsaspect;
import cn.edu.hljit.cs17.g1.service.ICdgDeformityService;
import cn.edu.hljit.cs17.g1.service.ICdgPoliticsaspectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdgPoliticsaspectService implements ICdgPoliticsaspectService {
    @Autowired
    private CdgPoliticsaspectDao cd;
    public List<CdgPoliticsaspect> getAll() {
        return cd.getAll();
    }
}

