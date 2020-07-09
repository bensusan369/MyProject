<%--
  Created by IntelliJ IDEA.
  User: Vircoys
  Date: 2020/6/28
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    ${message}
</head>
<body>

<form action="Test.do" method="post" >

    <table border="1">
        <td>cd_name</td>
        <c:forEach items="${list}" var="d">
            <tr>
                <td>${d.cd_name}</td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
