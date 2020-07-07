package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgDeformityDao;
import cn.edu.hljit.cs17.g1.dao.CdgEducationallevelDao;
import cn.edu.hljit.cs17.g1.pojo.CdgDeformity;
import cn.edu.hljit.cs17.g1.pojo.CdgEducationallevel;
import cn.edu.hljit.cs17.g1.service.ICdgDeformityService;
import cn.edu.hljit.cs17.g1.service.ICdgEducationallevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdgEducationallevelService implements ICdgEducationallevelService {
    @Autowired
    private CdgEducationallevelDao cd;
    public List<CdgEducationallevel> getAll() {
        return cd.getAll();
    }
}

