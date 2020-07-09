package cn.edu.hljit.cs17.g1.dao;

import cn.edu.hljit.cs17.g1.pojo.Test;

import java.util.List;

public interface TestDao {
    public List<Test> search(Test test);
}
