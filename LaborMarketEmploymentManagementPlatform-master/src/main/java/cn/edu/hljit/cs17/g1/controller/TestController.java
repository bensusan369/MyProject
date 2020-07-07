package cn.edu.hljit.cs17.g1.controller;

import cn.edu.hljit.cs17.g1.dao.TestDao;
import cn.edu.hljit.cs17.g1.pojo.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class TestController {
    @Autowired
    private TestDao dd;
    //查询功能
    @RequestMapping("Test.do")
    public String deptSearch(Test test, Map map){
        List<Test> list= dd.search(test);
        map.put("list", list);
        return  "test.jsp";
    }
}
