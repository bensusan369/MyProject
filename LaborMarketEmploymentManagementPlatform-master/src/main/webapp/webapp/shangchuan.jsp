<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/28
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" enctype="multipart/form-data"
      action="shangchuan.do"   >
      <input type="file" name="pic">
    <input type="submit" value="提交">
    
</form>
<img src="${tupian}">


</body>
</html>
