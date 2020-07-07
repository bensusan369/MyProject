package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.CdgDeformity;
import cn.edu.hljit.cs17.g1.pojo.CdgHealthstate;

import java.util.List;

public interface CdgHealthstateDao {
    public List<CdgHealthstate> getAll();
}
