package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgDeformityDao;
import cn.edu.hljit.cs17.g1.dao.CdgLanguageDao;
import cn.edu.hljit.cs17.g1.pojo.CdgDeformity;
import cn.edu.hljit.cs17.g1.pojo.CdgLanguage;
import cn.edu.hljit.cs17.g1.service.ICdgDeformityService;
import cn.edu.hljit.cs17.g1.service.ICdgLanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdgLanguageService implements ICdgLanguageService {
    @Autowired
    private CdgLanguageDao cd;
    public List<CdgLanguage> getAll() {
        return cd.getAll();
    }
}

