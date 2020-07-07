package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgSexDao;
import cn.edu.hljit.cs17.g1.pojo.CdgSex;
import cn.edu.hljit.cs17.g1.service.ICdgSexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CdgSexService implements ICdgSexService {
    @Autowired
    private CdgSexDao cd;
    public List<CdgSex> getAll() {
        return cd.getAll();
    }
}
