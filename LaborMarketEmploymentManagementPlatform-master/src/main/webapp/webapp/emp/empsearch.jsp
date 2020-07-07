<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/24
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
           <form action="empsearch.do" method="post">
                 姓名<input type="text" name="ename">
                 部门<select name="deptno">
                    <option value="">全部</option>
                <c:forEach items="${dlist}" var="d">
                    <option value="${d.deptno}">${d.dname}</option>
                </c:forEach>
           </select>
               <input type="submit" value="查询">
           </form>
       <a href="toempAdd.do">添加</a>
         <table>
             <tr><td>编号</td><td>姓名</td><td>性别</td><td>头像</td><td>部门</td><td>操作</td></tr>

             <c:forEach items="${list}" var="e">
         <tr><td>${e.empno}</td><td>${e.ename}</td><td>${e.sex}</td><td><img src="/${e.head}"  style="width:50px;height: 50px;" > </td><td>${e.dept.dname} --- ${e.deptno}</td>
             <td>
       <a href="delEmp.do?empno=${e.empno}" onclick="return confirm('删除么?')" >删除</a>
        <a href="getEmp.do?empno=${e.empno}"   >编辑</a>

             </td></tr>
             </c:forEach>
          </table>

</body>
</html>
