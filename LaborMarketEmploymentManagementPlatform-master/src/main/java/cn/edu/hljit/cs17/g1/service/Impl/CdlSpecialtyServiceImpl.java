package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdlSpecialtyDao;
import cn.edu.hljit.cs17.g1.pojo.CdlSpecialty;
import cn.edu.hljit.cs17.g1.service.ICdlSpecialtyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CdlSpecialtyService implements ICdlSpecialtyService {
    @Autowired
    private CdlSpecialtyDao cd;
    public List<CdlSpecialty> getAll() {
        return cd.getAll();
    }
}
