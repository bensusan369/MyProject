<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>忘记密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  
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
  	<center>
		<h2>忘记密码</h2>
	</center>
    <table width="900px"  bordercolor="#8CBDDB" border="1" align="center" cellspacing="0">
    	<tr>
    		<td align="right" width="50%">用户名:&nbsp;&nbsp;&nbsp;</td>
    		<td><input type="text" name="loginname" value="${user.userLoginName }" readonly><span id="loginnamemessage"></span></td>
    	</tr>

    	<tr>
    		<td align="right" width="50%">密保问题:&nbsp;&nbsp;&nbsp;</td>
    		<td><input type="text" name="question" value="${user.question }" readonly></td>
    	</tr>
    	
    	<tr>
    		<td align="right" width="50%">密保答案:&nbsp;&nbsp;&nbsp;</td>
    		<td><input type="text" name="answer" value=""></td>
    	</tr>
    	<tr>
    		<td align="right" width="50%">
    			<button style="background-color:#8CBDDB;" onclick="checkAnswer()">确认</button>&nbsp;&nbsp;&nbsp;
    		</td>
    		<td>&nbsp;&nbsp;&nbsp;<button style="background-color:#8CBDDB;" onclick="resetForm();">重置</button></td>
    	</tr>
    </table>
    </form>
  </body>
</html>
<script type="text/javascript">
<!--
	function checkAnswer(){
		var answer = fm.answer.value;
		if(answer==''){
			alert("请回答密保问题!");
			fm.answer.focus();
			return false;
		}
			fm.ActionType.value = "checkAnswer";
			fm.action = "${pageContext.request.contextPath}/user";
			fm.submit();
		
	}
	
	function resetForm(){
		fm.reset();
	}
	
//-->
</script>
