<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/28
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
      <form action="addEmp.do" method="post" enctype="multipart/form-data" >
          姓名<input type="text" name="ename"><br>
          性别  男<input type="radio" name="sex" value="男" checked >
               女<input type="radio" name="sex" value="女"  ><br>
          头像 <input type="file" name="pic" ><br>
          部门 <select name="deptno" >
          <c:forEach items="${dlist}" var="d">
         <option value="${d.deptno}">${d.dname}</option>
          </c:forEach>
              </select>
             <input type="submit" value="提交">
      </form>


</body>
</html>
