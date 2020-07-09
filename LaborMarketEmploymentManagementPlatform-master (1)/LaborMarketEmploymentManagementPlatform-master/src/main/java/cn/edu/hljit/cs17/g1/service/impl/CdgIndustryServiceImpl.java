package cn.edu.hljit.cs17.g1.service.impl;

import cn.edu.hljit.cs17.g1.dao.CdgIndustryMapper;
import cn.edu.hljit.cs17.g1.pojo.CdgIndustry;
import cn.edu.hljit.cs17.g1.service.ICdgIndustryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CdgIndustryServiceImpl implements ICdgIndustryService {

    @Autowired
    private CdgIndustryMapper cdgIndustryMapper;

    public List<CdgIndustry> getAll(){
        return cdgIndustryMapper.getAll();
    }
}
