<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>dwdj_3_updateBase</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/js/commonjs.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery-1.6.js"></script>
<script>
	$(function(){
		$("#queryBtn").click(function(){
			location.href="${pageContext.request.contextPath}/jsp/zj/dwzp/dwdj_2.jsp";
		});
	});
</script>
</head>
<body>
<form name="form1" action="" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom">
		  h<img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
		  当前位置：职业介绍 &gt; 单位登记 &gt; 新增单位基本信息</td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td align="center" valign="top">
	<table width="98%" border="0" cellpadding="0" cellspacing="0"   class="title">
      <tr>
        <td width="30">
		<table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table></td>
        <td  valign="bottom">基本信息&nbsp;&nbsp;&nbsp;[提示：单位登记有效期为12天,使用修改功能可以延长有效期12天]</td>
      </tr>
    </table>
  <tr>
    <td align="center" valign="top" > 
      <table width="98%" border="0" cellspacing="0" cellpadding="0" style="display:block" id="c1" align="center" style="word-break:break-all;width:fixed">
  <tr height="200">
    <td>
	    <table width="100%" border="0" cellspacing="1" cellpadding="0"   >
        <tr>
          <td width="13%" align="center"><span class="redtxt">*</span>单位法人码：<input type="text" name="dwfrm" id="dwfrm">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="BUTTONs3" id="queryBtn" value="查询"></td >          
        </tr>
        <tr>
        	<td width="13%"  align="center"><span id="querySpan" style="color:red"></span></td>
        </tr>
       	</table>
       	</td>
	</tr>
</table>
		<br>
<TABLE width="100%" border=0 cellPadding=0 cellSpacing=1 class="tablebody" align="center">
  <TR align="center"> 
    <TD class="line2"> <input name="bc" type="button" class="BUTTONs3" value="保 存" onClick="doInsert();">
      &nbsp;&nbsp;
      <INPUT name="fh" type="button" onclick="window.location.href='<%=request.getContextPath() %>/service/zj/dwzp/dwdj_1_querybase.jsp';" class="BUTTONs3" value="返 回"> 
    </TD>
  </TR>
</TABLE>
</td>
</tr>
</table>
</form>
</body>
</html>