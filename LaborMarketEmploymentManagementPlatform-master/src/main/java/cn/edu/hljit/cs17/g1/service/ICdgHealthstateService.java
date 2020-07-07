package cn.edu.hljit.cs17.g1.service;

import cn.edu.hljit.cs17.g1.pojo.CdgDeformity;
import cn.edu.hljit.cs17.g1.pojo.CdgHealthstate;

import java.util.List;

public interface ICdgHealthstateService {
    public List<CdgHealthstate> getAll();
}
