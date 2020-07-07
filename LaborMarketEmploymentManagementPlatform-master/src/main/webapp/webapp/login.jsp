<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>劳动力市场管理系统_用户登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #016aa9;
	overflow:hidden;
}
.STYLE1 {
	color: #000000;
	font-size: 12px;
}
-->
</style></head>

<body>
<form method="POST" name="fm" action="">
<input type="hidden" name="ActionType" value="">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="235" background="${pageContext.request.contextPath}/images/login_03.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="53"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="394" height="53" background="${pageContext.request.contextPath}/images/login_05.gif">&nbsp;</td>
            <td width="206" background="${pageContext.request.contextPath}/images/login_06.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="16%" height="25"><div align="right"><span class="STYLE1">用户</span></div></td>
                <td width="57%" height="25"><div align="center">
                  <input type="text" name="userloginname" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                </div></td>
                <td width="27%" height="25">&nbsp;</td>
              </tr>
              <tr>
                <td height="25"><div align="right"><span class="STYLE1">密码</span></div></td>
                <td height="25"><div align="center">
                  <input type="password" name="userpassword" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                </div></td>
                <td height="25">
                	<div align="left">
               			<img src="${pageContext.request.contextPath}/images/dl.gif" onclick="checkLogin();" width="49" height="18" border="0" />
               		</div>
	       		</td>
              </tr>
            </table></td>
            <td width="362" background="${pageContext.request.contextPath}/images/login_07.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td style="text-align:center;" height="213" background="${pageContext.request.contextPath}/images/login_08.gif">
	        <a href="#" onclick="gotoRegUser();"><font size="2" color="#ffffff">注册用户</font></a>
	        <a href="#" onclick="forgetPwd();"><font size="2" color="#ffffff">忘记密码</font></a>
        </td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
<script type="text/javascript">
	function checkLogin(){
		fm.action = "${pageContext.request.contextPath }/frame/main.jsp";
		fm.ActionType.value = "login";
		fm.submit();
	}
	
	
	function gotoRegUser(){
		window.location.href = "${pageContext.request.contextPath}/jsp/user/register.jsp";
	}
	
	function forgetPwd(){
		if(fm.loginname.value==""){
			alert("请填写用户名^.^");
			return false;
		}
		fm.ActionType.value="forgetPwd";
		fm.action = "${pageContext.request.contextPath}/user";
		fm.submit();
	}
</script>
