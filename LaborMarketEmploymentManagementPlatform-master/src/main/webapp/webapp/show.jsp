<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/19
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!--

    -->
    <%--  1 张三疯
      2 张三
      3 张二1
      4 你好abc--%>

   <c:forEach items="${list}"  varStatus="in" var="d">
     ${in.index+1}    ${d.id}--${d.name}<br>
   </c:forEach>

    <c:if test="${mytest.id==1}">
      欢迎光临 aaaaa
    </c:if>

-------------分割线--------------------<br>
    <%
     Object o=  request.getAttribute("abc");
     response.getWriter().write(o.toString());
    %>

   <br>
 abc:::::: ${abc} EL 表达式的作用 主要 是 将 值域中的内容进行展示抓取
<br>
${mytest.id}   ${mytest.name}
<br>
${mp.a}  &nbsp;  &nbsp;  &nbsp;  12  -  &nbsp;  &nbsp;   ${mp.name} <br>
   ${ab[0]} ${ab[1]}<br>
   ${list[0].id}  ${list[0].name}
   ${list[1].id}  ${list[1].name}
</body>
</html>
