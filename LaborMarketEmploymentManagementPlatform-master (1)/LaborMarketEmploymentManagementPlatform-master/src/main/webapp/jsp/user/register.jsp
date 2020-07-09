<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>劳动力市场职介系统-用户注册</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script src="${pageContext.request.contextPath }/js/jquery-1.4.2.min.js" type="text/javascript"></script>

		<script>

	function checkLoginName(){
		//1.得到Ajax的引擎对象
		//FireFox,Sifiri,Opera,IE8以上...
		var ajax = getXmlHttpRequest();
		//2.设置异步的(非同步的)请求
		//	三个参数:请求方式,URL,是否做异步形式的请求
		var loginName = fm.loginname.value;
		if(loginName!=""){
			var url = "${pageContext.request.contextPath}/user?ActionType=checkLoginName&loginname=" + fm.loginname.value+"&t="+Math.random();
			ajax.open('GET',url,true);
			//3.使用Ajax引擎如何处理控制器对本次异步请求的响应
			ajax.onreadystatechange = function(){
				//ajax.responseText;
				if(ajax.readyState == '4'){
					if(ajax.status == '200'){
						var returnText = ajax.responseText.split("+");
						if(returnText[0]=="SUCCESS"){
							document.getElementById("ajaxmessage").innerHTML = "<FONT color='green' size='2'>"+returnText[1]+"</FONT>";
						}else {
							document.getElementById("ajaxmessage").innerHTML = "<FONT color='red' size='2'>"+returnText[1]+"</FONT>";
						}
					}
				}
			};
			
			//4.执行Ajax异常请求流程
			ajax.send(null);
		}
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


	function checkUserName() {
		var userName = $("#userName").val();
		var reg = /^([a-zA-Z0-9_]){3,10}$/;
		if (!reg.test(userName)) {
			$("#niceng").html("格式不正确");
			$("#niceng").css( {
				color : "red",
				font : "12px"
			});
			return false;
		} else {
			$("#niceng").html("&radic;");
			$("#niceng").css( {
				color : "green",
				font : "12px"
			});
			//如果符合格式，则用ajax验证用户名是否可用
			//checkLoginName();
			return true;
		}
	}
	
	function checkPwd() {
		var pwd = $("#pwd").val();
		var reg = /^[a-z0-9_-]{3,16}$/;
		if (!reg.test(pwd)) {
			$("#lblpwd").html("格式不正确");
			$("#lblpwd").css( {
				color : "red",
				font : "10px"
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
	
	function executeReg(){
		if(fm.loginname.value == ""){
			alert("请填写用户名");
			fm.loginname.focus();
			return false;	
		}
		if(fm.loginpwd.value == ""){
			alert("请填写密码");
			fm.loginpwd.focus();
			return false;	
		}
		if(fm.username.value == ""){
			alert("请填写昵称");
			fm.username.focus();
			return false;	
		}
		if(fm.question.value == ""){
			alert("请填写密保问题");
			fm.question.focus();
			return false;	
		}
		if(fm.answer.value == ""){
			alert("请填写密保答案");
			fm.answer.focus();
			return false;	
		}
		var ajaxmessage = document.getElementById("ajaxmessage");
		var ajaxValue = ajaxmessage.innerText.replace(/\s/gi,'');
		if(ajaxValue=="用户已存在"){
			alert("该用户名已存在,请换一个更好的吧");
			fm.loginname.focus();
			return false;
		}
		
		var niceng = document.getElementById("niceng");
		var nicengValue = niceng.innerText.replace(/\s/gi,'');//用replace是为了去掉两边的空格
		if(nicengValue=="格式不正确"){
			alert("昵称格式不正确，请按照提示重新填写");
			fm.username.focus();
			return false;
		}
		
		var lblpwd = document.getElementById("lblpwd");
		var lblpwdValue = lblpwd.innerText.replace(/\s/gi,'');
		if(lblpwdValue=="格式不正确"){
			alert("密码格式不正确，请按照提示重新填写");
			fm.loginpwd.focus();
			return false;
		}
		
		var label1 = document.getElementById("label1");
		var label1Value = label1.innerText.replace(/\s/gi,'');
		if(label1Value=="两次输入的密码不一致"){
			alert("两次密码不正确，请重新填写");
			fm.loginpwd.focus();
			return false;
		}
		fm.ActionType.value = "register";
		fm.action = "${pageContext.request.contextPath}/user";
		fm.submit();
	}
</script>
		<style type="text/css">
#header {
	width: 900px;
	height: 90px;
	margin-left: 220px;
	background-color: #8CBDDB;
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
	width: 900px;
	height: 450px;
	margin-top: 10px;
	margin-left: 220px;
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
			<div id="tit">
				已有帐号？
				<a href="login.jsp"> 登录</a>
			</div>
		</div>

		<div id="center">
			<br>
			<fieldset>
				<legend>
					<font color="#036479" size="4"><b>&gt;&gt;&nbsp;&nbsp;用户注册</b></font>
				</legend>
			<form name="fm" action="" method="post">
				<input type="hidden" name="ActionType">
				<table style="margin-left:300px; width:500px;align:left;" border="0" >

					<tr>
						<td width="90">
							用&nbsp;户&nbsp;名:
						</td>
						<td>
							<input id="loginName" type="text" maxlength="32" name="loginname"
								onblur="checkLoginName();" style="width: 150px; height: 20px;" />
							<span id="ajaxmessage"></span>
							<br />
						</td>
					</tr>

					<tr>
						<td>
							密&nbsp;&nbsp;&nbsp;&nbsp;码：
						</td>
						<td>
							<br />
							<input id="pwd" type="password" maxlength="16" name="loginpwd"
								style="width: 150px; height: 20px;" onblur="checkPwd();"/>
								<label id="lblpwd"></label>
							<br />
							<font color="#036479" size="2">3~16数字、字母或下划线</font>
						</td>
					</tr>
					<tr>
						<td>
							确认密码：
						</td>
						<td>
							<br />
							<input id="pwd1" type="password"  maxlength="16" name="againpwd"
								style="width: 150px; height: 20px;" onblur="getpassword()" />
							<label id="label1"></label>
							<br />
							<br />
						</td>
					</tr>

					<tr>
						<td>
							昵&nbsp;&nbsp;&nbsp;&nbsp;称：
						</td>
						<td>
							<input id="userName" type="text"  maxlength="32" name="username" onblur="checkUserName();"
								style="width: 150px; height: 20px;" />
								<label id="niceng"></label>
								<br />
							<font color="#036479" size="2">3~10数字、字母或下划线</font>
						</td>
					</tr>

					<tr>
						<td>
							密保问题：
						</td>
						<td>
							<br />
							<input type="text" id="question" name="question"
								style="width: 150px; height: 20px;" maxlength="50"/>
							<label id="lblage"></label>
							<br />
							<br />
						</td>
					</tr>

					<tr>
						<td>
							密保答案：
						</td>
						<td>
							<br />
							<input type="text" id="answer" name="answer"
								style="width: 150px; height: 20px;"  maxlength="50"/>
							<label id="lbltel"></label>
							<br />
							<br />
						</td>
					</tr>

					<tr height="70px">
						<td>
							<input class="c" type="button" value="注册" onclick="executeReg();"/>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input class="c" type="reset" value="重置" />
						</td>
					</tr>
				</table>
			</form>
		</fieldset>
		</div>
		<div id="foot">
			<font size="2"> &copy; Copyright 2013 - 2014 LaborMarketSystem. All
				Rights Reserved. 版权所有</font>
		</div>

	</body>
</html>
