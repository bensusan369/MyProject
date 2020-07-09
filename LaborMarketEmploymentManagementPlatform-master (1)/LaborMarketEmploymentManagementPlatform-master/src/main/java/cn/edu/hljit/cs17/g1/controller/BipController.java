package cn.edu.hljit.cs17.g1.controller;


import cn.edu.hljit.cs17.g1.pojo.*;
import cn.edu.hljit.cs17.g1.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class BipController {
    @Autowired
    private IBipService bipService;
    @Autowired
    private ICdxComputergradeService cdxComputergradeService;
    @Autowired
    private ICdlProficiencyService cdlProficiencyService;
    @Autowired
    private ICdgEducationallevelService cdgEducationallevelService;
    @Autowired
    private ICdgSexService cdgSexService;
    @Autowired
    private ICdgNationService cdgNationService;
    @Autowired
    private ICdgDeformityService cdgDeformityService;
    @Autowired
    private ICdgMarriageService cdgMarriageService;
    @Autowired
    private ICdgPoliticsaspectService cdgPoliticsaspectService;
    @Autowired
    private ICdgHealthstateService cdgHealthstateService;
    @Autowired
    private ICdgLanguageService cdgLanguageService;
    @Autowired
    private ICdlPersonneltypeService cdlPersonneltypeService;
    @Autowired
    private ICdlRprtypeService cdlRprtypeService;

    @RequestMapping("jsp/zj/grqz/chaxun.do")
    public String chaxun(Bip bip, Map map ){
        Bip b = bipService.chaxun(bip);
        if(b==null){//没有对象
        //提示将信息准备出来，在页面上展示出来
            List<CdxComputergrade> cdxComputergradeServiceList = cdxComputergradeService.getAll();
            List<CdlProficiency>  cdlProficiencyList= cdlProficiencyService.getAll();
            List<CdgEducationallevel> cdgEducationallevelList = cdgEducationallevelService.getAll();
            List<CdgSex> cdgSexList = cdgSexService.getAll();
            List<CdgNation> cdgNationList = cdgNationService.getAll();
            List<CdgDeformity> cdgDeformityList = cdgDeformityService.getAll();
            List<CdgMarriage> cdgMarriageList = cdgMarriageService.getAll();
            List<CdgPoliticsaspect> cdgPoliticsaspectList = cdgPoliticsaspectService.getAll();
            List<CdgHealthstate> cdgHealthstateList = cdgHealthstateService.getAll();
            List<CdgLanguage> cdgLanguageList = cdgLanguageService.getAll();
            List<CdlPersonneltype> cdlPersonneltypeList = cdlPersonneltypeService.getAll();
            List<CdlRprtype> cdlRprtypeList = cdlRprtypeService.getAll();

            map.put("cdxComputergradeServiceList",cdxComputergradeServiceList);
            map.put("cdlProficiencyList",cdlProficiencyList);
            map.put("cdgEducationallevelList",cdgEducationallevelList);
            map.put("cdgSexList",cdgSexList);
            map.put("cdgNationList",cdgNationList);
            map.put("cdgDeformityList",cdgDeformityList);
            map.put("cdgMarriageList",cdgMarriageList);
            map.put("cdgPoliticsaspectList",cdgPoliticsaspectList);
            map.put("cdgHealthstateList",cdgHealthstateList);
            map.put("cdgLanguageList",cdgLanguageList);
            map.put("cdlPersonneltypeList",cdlPersonneltypeList);
            map.put("cdlRprtypeList",cdlRprtypeList);
            map.put("bipCitizenid",bip.getBipCitizenid());











            return "qzdj_2.jsp";
        }else{
            return "";
        }
    }

    //新增bip表数据
    @RequestMapping("jsp/zj/dwzp/addBip.do")
    public String addBip(Bip bip,Map map){
        int x=bipService.addBip(bip);
        String flag=x<1?"fail":"succ";
        map.put("flag", flag);
        return "/common/alert.jsp";

    }

}
