<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
    <title>劳动力市场管理系统-用户查询列表</title>
    <link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" media="all" />
    <script src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js" type="text/javascript"></script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle">
    <h2>当前位置：&nbsp;&gt;&gt; 系统管理&nbsp;&gt;&gt;用户管理 </h2>
</div>

    <!--//commonTableSearch-->
    <form name="fm" action="searchldlscUser.do" method="post">
        <div  class="commonTableSearch">
            <TABLE width="98%" align="center"
                   border="0" cellPadding="0" cellSpacing="0" bordercolor="#FFFFFF" class="tablebody">
                <tr>
                    <td width="58%" valign="top">
                        <TABLE width="100%" align="center"
                               border="0" cellPadding="0" cellSpacing="0" bordercolor="#FFFFFF" class="tablebody">
                            <tr class="line2">
                                <td width="75" align="right">用户名</td>
                                <td>
                                    <INPUT  name="userName" style="WIDTH: 100%" maxlength="18" ></td>
                                <td width="55" align="right">登录名</td>
                                <td><INPUT  name="userloginname"  style="WIDTH: 100%" maxlength="18" ></td>

                            </tr>

                        </table>
                        <TABLE width="100%"
                               border=0 cellPadding=0 cellSpacing=1 bordercolor="#9DCBEC" class="tablebody">
                            <TR align="center">
                                <TD align="center" class="line2">
                                    <input name="bc" type="submit"class="BUTTONs3" id="bc" value="查 询" >
                                </TD>
                            </TR>
                        </TABLE>
                    </td>
                </tr>
            </table>

        </div>
              <input type="button" value="添加用户" onclick="window.location.href='register.jsp'" >
        <table width="101%" border="0" cellpadding="0" cellspacing="1" class="commonTable">
            <tr>
                <th>序号</th>
                <th>用户名</th>
                <th>密码</th>
                <th>用户昵称</th>

                <th class="editColDefault">操作</th>
            </tr>
            <c:forEach items="${list }" var="user" varStatus="status">
                <tr>
                    <td align="center">${user.userId }</td>
                    <td align="center">${user.userloginname }</td>
                    <td align="center">${user.userpassword }</td>
                    <td align="center">${user.userName }</td>

                    <td align="center">
                        <a href="delldlscUser.do?userId=${user.userId}" class="btnIconDel" onclick="return confirm('删么?')"  title="删除"></a>
                        <a href="#" class="btnIconEdit" title="编辑" ></a>

                    </td>
                </tr>
            </c:forEach>
        </table>
        <!--//commonTable-->
    </form>

        <!--自定义标签式的分页-->
       <%-- <pt:newpagetag tableName="" action="user"></pt:newpagetag>--%>
</body>
</html>
<script type="text/javascript">

    function gotoUpdatePage(a){
        var tab=a.parentNode.parentNode.parentNode;
        var thistr=a.parentNode.parentNode;
        var tds = thistr.cells;

        fm.oneId.value=tds[1].innerText;
        fm.ActionType.value="gotoupdatepage";
        fm.action = '${pageContext.request.contextPath }/userlist';
        fm.submit();
    }

    function showDetail(a){
        var tab=a.parentNode.parentNode.parentNode;
        var thistr=a.parentNode.parentNode;
        var tds = thistr.cells;

        fm.oneId.value=tds[1].innerText;
        fm.ActionType.value="showDetail";
        fm.action = '${pageContext.request.contextPath }/userlist';
        fm.submit();
    }


    function gotoAddPage(){
        fm.ActionType.value="gotoaddpage";
        fm.action = '${pageContext.request.contextPath }/userlist';
        fm.submit();
    }

    function changeAllCheckbox(){
        for(var i=0;i<fm.oid.length;i++){
            fm.oid[i].checked = fm.oids.checked;
        }
    }

    function removeAny(){
        var flag = false;
        for(var i=0;i<fm.oid.length;i++){
            if(fm.oid[i].checked){
                flag = true;
                break;
            }
        }

        if(!flag){
            alert("请至少勾选一项待删除的数据!");
            return false;
        }

        fm.ActionType.value = "remove";
        fm.action = '${pageContext.request.contextPath }/userlist';
        fm.submit();
    }

    function delOneRow(a){
        var tab=a.parentNode.parentNode.parentNode;
        var thistr=a.parentNode.parentNode;
        var tds = thistr.cells;

        fm.uid.value=tds[0].innerText;
        fm.ActionType.value="delOneRow";
        fm.action = '${pageContext.request.contextPath }/user';

        // 利用table的deleteRow方法根据行的rowIndex删除元素
        tab.deleteRow(a.parentNode.parentNode.rowIndex);
        fm.submit();
    }


</script>