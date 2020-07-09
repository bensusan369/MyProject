package cn.edu.hljit.cs17.g1.controller;

import cn.edu.hljit.cs17.g1.pojo.LdlscUser;
import cn.edu.hljit.cs17.g1.service.ILdlscUserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class LdlscUserController {
    @Autowired
    private ILdlscUserService ls;

    @RequestMapping("jsp/user/searchldlscUser.do")
    public String search(LdlscUser user, Map map){
     List<LdlscUser> list= ls.search(user);
          map.put("list", list);
          //��ѯ������ ���� �ܼ�¼��    select count(*) from (  ��ѯ��sql  )
         user.setTotalCount(ls.getcount(user));
          map.put("page", user);//���÷�ҳ����
        return "ldlscusersearch.jsp";
    }

    //ɾ������
     @RequestMapping("jsp/user/delldlscUser.do")
    public String delldlscUser(LdlscUser user,Map map){
          int x=   ls.delLdlscUser(user);
           String flag=x<1?"fail":"succ";
          map.put("flag", flag);
          return "/common/alert.jsp";
     }

     //����¼���Ƿ����
    @RequestMapping("checkuserloginname.do")
    @ResponseBody// ֱ�ӽ����ݷ��ص�ҳ����
   public String checkuserloginname(LdlscUser user){
          //���ݵ�¼�� ���в�ѯ
          List<LdlscUser>  list=ls.checkloginname(user);
            if(list!=null&&list.size()>0){
                return "FAIL";
            }
                return "SUCCESS";
    }

    @RequestMapping("ldlscuseradd.do")
    public String ldlscuseradd(LdlscUser user,Map map){
      int x=  ls.addLdlscUser(user);
        String flag=x<1?"fail":"succ";
        map.put("flag", flag);
        return "/common/alert.jsp";
    }


    @RequestMapping("jsp/user/toupdateUser.do")//����id ��ȡ�� �û����� ������չʾ��ҳ����
    public String toupdateUser(LdlscUser user,Map map){
        LdlscUser u= ls.getLdlscUser(user);//���� �û�id ���в�ѯ
        System.out.println(u.getUserName());
        map.put("u", u);//���û�������Ϣ ���浽request ��ֵ����
           return  "updateldlscUser.jsp";
        }

        @RequestMapping("ldlscuserupdate.do")
public String ldlscuserupdate(LdlscUser user,Map map){
     int x=  ls.updateLdlscUser(user);
         String flag=x<1?"fail":"succ";
            map.put("flag", flag);
            return "/common/alert.jsp";
        }

        //���� �� �û��� �� ����Ĳ���
     @RequestMapping("login.do")
      public String  login(LdlscUser user, Map map, HttpServletRequest request){
           LdlscUser u=  ls.login(user);
             if(u!= null){// u���ǿ� ˵����¼�ɹ� ����ʾ ��ҳ
               //���û���Ϣ ���뵽session �з������ʹ��
                 request.getSession().setAttribute("currentUser", u);
                 return "/frame/main.jsp";
             }else{
                 map.put("msg", "fail") ;
                 return "/login.jsp";
             }



      }


}
