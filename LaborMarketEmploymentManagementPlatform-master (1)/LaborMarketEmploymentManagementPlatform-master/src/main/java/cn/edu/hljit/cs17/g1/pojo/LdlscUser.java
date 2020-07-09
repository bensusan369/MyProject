package cn.edu.hljit.cs17.g1.pojo;


import cn.edu.hljit.cs17.g1.util.Page;

public class LdlscUser extends Page {
    private Integer userId;
    private String userName;
    private String userloginname;
    private String userpassword;
    private String userindex;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserloginname() {
        return userloginname;
    }

    public void setUserloginname(String userloginname) {
        this.userloginname = userloginname;
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getUserindex() {
        return userindex;
    }

    public void setUserindex(String userindex) {
        this.userindex = userindex;
    }
}
