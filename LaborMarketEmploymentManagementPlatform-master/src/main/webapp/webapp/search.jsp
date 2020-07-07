<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/22
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
     <form action="search.do" method="post">
         姓名 <input type="text" name="name">
         编号 <input type="text" name="id">
         起始id <input type="text" name="kaishi">至
         结束id <input type="text" name="jieshu">
         <input type="submit" value="查询">
     </form>



    <table border="1" align="center">
        <tr><td>编号</td><td>姓名</td><td>操作</td></tr>
        <c:forEach items="${list}" var="t">
        <tr><td>${t.id}</td><td>${t.name}</td><td>操作</td></tr>
        </c:forEach>
    </table>


</body>
</html>
