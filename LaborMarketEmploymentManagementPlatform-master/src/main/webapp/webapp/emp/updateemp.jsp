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
      <form action="updateEmp.do" method="post" enctype="multipart/form-data" >
          编号<input type="text" name="empno" readonly value="${e.empno}">
          姓名<input type="text" name="ename" value="${e.ename}"><br>
          性别  男<input type="radio" name="sex" value="男"
        <c:if test="${e.sex=='男'}"> checked</c:if>
                     >
               女<input type="radio" name="sex" value="女"
        <c:if test="${e.sex=='女'}"> checked</c:if>><br>
          头像 <input type="file" name="pic" ><br>
             <input type="hidden" name="head" value="${e.head}">
          部门 <select name="deptno" >
          <c:forEach items="${dlist}" var="d">
         <option value="${d.deptno}"
                 <c:if test="${d.deptno==e.deptno}">selected</c:if>
         >${d.dname}</option>
          </c:forEach>
              </select>
             <input type="submit" value="提交">
      </form>


</body>
</html>
