<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/23
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    ${message}
</head>
<body>

       <form action="deptSearch.do" method="post" >
          部门编号 <input type="text" name="deptno" >
           部门名称 <input type="text" name="dname" >
         <input type="submit" value="查询">
       </form>
       <a href="addDept.jsp">添加部门</a>
    <form action="delbat.do" method="post">


       <input type="submit" value="批删">
        <table border="1">
            <tr><td>选择</td><td>编号</td><td>部门名称</td><td>操作</td></tr>
          <c:forEach items="${list}" var="d">
            <tr><td><input type="checkbox" name="ids" value="${d.deptno}"></td><td>${d.deptno}</td><td>${d.dname}</td><td>
                <a href="edit.do?deptno=${d.deptno}"    >编辑</a>
                <a href="delDept.do?deptno=${d.deptno}"
                       onclick="return confirm('删么?')"
                 >删除</a>
            </td></tr>
           </c:forEach>
        </table>
    </form>
</body>
</html>
