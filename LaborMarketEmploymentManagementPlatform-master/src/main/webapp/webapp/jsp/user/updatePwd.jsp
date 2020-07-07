<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>根据旧密码修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script src="${pageContext.request.contextPath }/js/jquery-1.4.2.min.js" type="text/javascript"></script>

<script type="text/javascript">
<!--
	function confirmModifyPwd(){
		if(fm.newloginpwd.value==''){
			alert("密码必须填写!");
			fm.newloginpwd.focus();
			return false;
		}
		if(fm.againpwd.value==''){
			alert("请再次输入密码!");
			fm.againpwd.focus();
			return false;
		}
		if(fm.newloginpwd.value==fm.loginpwd.value){
			alert("新密码不能与原密码相同,请重新填写");
			fm.againpwd.value="";
			fm.newloginpwd.value="";
			fm.newloginpwd.focus();
			return false;
		}

		var ajaxmessage = document.getElementById("ajaxmessage");
		var ajaxValue = ajaxmessage.innerText.replace(/\s/gi,'');
		if(ajaxValue=="密码错误,请重新填写"){
			alert("原密码不正确,请重新填写");
			fm.loginpwd.focus();
			return false;
		}

		var lblpwd = document.getElementById("lblpwd");
		var pwdValue = lblpwd.innerText.replace(/\s/gi,'');
		if(pwdValue=="格式不正确"){
			alert("密码格式不正确，请按照提示重新填写");
			fm.newloginpwd.focus();
			return false;
		}

		var label1 = document.getElementById("label1");
		var label1Value = label1.innerText.replace(/\s/gi,'');
		if(label1Value=="两次输入的密码不一致"){
			alert("两次密码不正确，请重新填写");
			fm.newloginpwd.focus();
			return false;
		}

		
		fm.ActionType.value = "updatePwd";
		fm.action = "${pageContext.request.contextPath}/user";
		fm.submit();
	}
	
	function checkPwd(){
		var pwd = $("#pwd").val();
		var reg = /^[a-z0-9_]{3,16}$/;
		if (!reg.test(pwd)) {
			$("#lblpwd").html("格式不正确");
			$("#lblpwd").css({
				color : "red",
				font : "12px"
			});
			return false;
		} else {
			$("#lblpwd").html("&radic;");
			$("#lblpwd").css( {
				color : "green",
				font : "12px"
			});
			return true;
		}
	}
	
	
	function getpassword() {
		var pwd = document.getElementById("pwd").value;
		var pwd1 = document.getElementById("pwd1").value;
		if (pwd != pwd1) {
			document.getElementById("label1").innerHTML = "两次输入的密码不一致";
			$("#label1").css( {
				color : "red",
				font : "12px"
			});
			return false;
		} else {
			document.getElementById("label1").innerHTML = "";
			$("#label1").html("&radic;");
			$("#label1").css( {
				color : "green",
				font : "12px"
			});
			return true;
		}
	}
	
	function resetForm(){
		fm.reset();
	}
	
	function checkLoginPwd(){
		var ajax = getXmlHttpRequest();
		var url = "${pageContext.request.contextPath}/user?ActionType=checkLoginPwd&loginpwd=" + fm.loginpwd.value+"&loginname="+fm.loginname.value;
		ajax.open('GET',url,true);
		ajax.onreadystatechange = function(){
			if(ajax.readyState == '4'){
				if(ajax.status == '200'){
					var returnText = ajax.responseText.split("+");
					if(fm.loginpwd.value!=null && fm.loginpwd.value!=""){
						if(returnText[0]=="SUCCESS"){
							document.getElementById("ajaxmessage").innerHTML = "<FONT color='green' size='2'>"+returnText[1]+"</FONT>";
						}else {
							document.getElementById("ajaxmessage").innerHTML = "<FONT color='red' size='2'>"+returnText[1]+"</FONT>";
						}
					}
				}
			}
		};
		ajax.send(null);
	}
	
	function getXmlHttpRequest(){
		if(window.XmlHttpRequest){
			return new XmlHttpRequest();
		}else{
			try{
				return new ActiveXObject("Msxml2.XMLHTTP");
			}catch(e){
				try{
					return new ActiveXObject("Microsoft.XMLHTTP");
				}catch(e){
					alert("你的浏览器是火星造的吗?");
					return false;
				}
			}
		}
	}
//-->
</script>

  <style type="text/css">
#header {
	width: 900px;
	height: 90px;
	margin-left: 120px;
	background-color: #8CBDDB;
}
#titlepwd{
	width: 900px;
	height: 30px;
	margin-left: 120px;
}
#title {
	margin-top: 20px;
	margin-left: 300px;
	width: 400px;
	height: 20px;
}

#logo {
	margin-left: 10px;
	margin-top: -15px;
	width: 200px;
	height: 50px;
	position: absolute;
	background-color: #8CBDDB;
}

#tit {
	float: right;
	width: 200px;
	height: 20px;
}

#right {
	
}

#center {
	width: 600px;
	height: 450px;
	margin-top: 10px;
	margin-left: 550px;
}

#left {
	width: 300px;
	height: 300px;
	margin-top: -370px;
	margin-left: 600px;
	position: absolute;
}

a {
	font-size: 14px;
	color: #666666;
	text-decoration: none;
}

#foot {
	margin-top: 20px;
	margin-left: 470px;
	algin: center;
}

.c {
	background-color: #8CBDDB; /*此处不能用双引号*/
	font-size: 20;
	width: 80;
}

</style>
	</head>
	<body>
	<div id="header">
		<br />

		<div id="title">
			<font color="black" size="+3" face="华文楷体"><b>劳动力市场职介系统</b>
			</font>
		</div>
		
	</div>
  
  	<form name="fm" action="" method="post">
  	<input type="hidden" name="ActionType">
  	<br/>
  	<div id="titlepwd">
		<font color="#036479" size="4"><b>当前位置：&nbsp;&gt;&gt; 系统管理&nbsp;&gt;&gt;&nbsp;&nbsp;修改密码</b></font>
	</div>
  	<br/>	<br/>
    <table width="900px"  bordercolor="#8CBDDB" border="1" align="center" cellspacing="0">
    	<tr>
    		<td align="right" width="50%">用户名:&nbsp;&nbsp;&nbsp;</td>
    		<td><input type="text" name="loginname" value="${sessionScope.USER.userName }" readonly><span id="loginnamemessage"></span></td>
    	</tr>
    	<tr>
    		<td align="right" width="50%">原密码:&nbsp;&nbsp;&nbsp;</td>
    		<td>
    			<input type="password" name="loginpwd" id="oldpwd" onblur="checkLoginPwd();" value="">
    			<label id="ajaxmessage"></label>
    		</td>
    	</tr>
    	<tr>
    		<td align="right" width="50%">新密码:&nbsp;&nbsp;&nbsp;</td>
    		<td>
    			<input type="password" name="newloginpwd" id="pwd" onblur="checkPwd();" value="">
    			<label id="lblpwd"></label>
				<font color="#036479" size="2" ><span style="position:relative;margin-left:90px;">3~16数字、字母或下划线</span></font>
    		</td>
    	</tr>
    	<tr>
    		<td align="right" width="50%">确认密码:&nbsp;&nbsp;&nbsp;</td>
    		<td>
    			<input type="password" name="againpwd" id="pwd1" onblur="getpassword()" value="">
    			<label id="label1"></label>
    		</td>
    		
    	</tr>
		
    	<tr>
    		<td align="right" width="50%">
    			<button style="background-color:#8CBDDB;" onclick="confirmModifyPwd();">确认修改</button>&nbsp;&nbsp;
    		</td>
    		<td>&nbsp;&nbsp;<button style="background-color:#8CBDDB;" onclick="resetForm();">重新填写</button></td>
    	</tr>
    </table>
    </form>
  </body>
</html>