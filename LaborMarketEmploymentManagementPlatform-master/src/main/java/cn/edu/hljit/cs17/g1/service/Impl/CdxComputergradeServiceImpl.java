package cn.edu.hljit.cs17.g1.service.Impl;

import cn.edu.hljit.cs17.g1.dao.CdgMarriageDao;
import cn.edu.hljit.cs17.g1.dao.CdxComputergradeDao;
import cn.edu.hljit.cs17.g1.pojo.CdxComputergrade;
import cn.edu.hljit.cs17.g1.service.ICdgMarriageService;
import cn.edu.hljit.cs17.g1.service.ICdxComputergradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdxComputergradeService implements ICdxComputergradeService {
    @Autowired
    private CdxComputergradeDao cd;
    public List<CdxComputergrade> getAll() {
        return cd.getAll();
    }
}
