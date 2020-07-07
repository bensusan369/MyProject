package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdlQualificationDao;
import cn.edu.hljit.cs17.g1.pojo.CdlQualification;
import cn.edu.hljit.cs17.g1.service.ICdlQualificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CdlQualificationService implements ICdlQualificationService {
@Autowired
    private CdlQualificationDao cd;
    public List<CdlQualification> getAll() {
        return cd.getAll();
    }
}
