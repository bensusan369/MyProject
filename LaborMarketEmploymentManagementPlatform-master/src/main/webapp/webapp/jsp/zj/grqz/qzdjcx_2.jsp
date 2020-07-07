<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>

<body>
<form method="post" name="form1">
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
<tr> 
  <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍 
    &gt; 求职招聘 &gt; 信息查询</td>
</tr>
<tr> 
  <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
</tr>
</table>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0"   class="title">
  <tr>
    <td width="30">
	<table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
      </tr>
    </table></td>
    <td  valign="bottom">查询结果&nbsp;&nbsp;&nbsp;提示：[共有x个求职符合信息查询条件，请选择求职名称查看详细信息]</td>
  </tr>
</table>
<table width="80%" align="center" border="0" height="50" cellpadding="0" cellspacing="0"   class="title">
  <tr>
    <td width="30">
	<table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
      </tr>
    </table></td>
    <td  valign="bottom">身份证号码：</td><td  valign="bottom">姓名：</td>
  </tr>
</table>
      <TABLE width="80%" align="center" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
            <TR class="line4" align="center">
              <TD>序号</TD>
              <TD>操作</TD>
              <TD>冻结原因</TD>
              <TD>冻结时间</TD>
              <TD>解冻时间</TD>
            </TR>

      </TABLE>
 
<br>
<table align="center" width="98%" border="0" cellspacing="0" cellpadding="0">
    <tr align="center" class="line2">
      <td><input name="button22" type="button"class="BUTTONs3"  value="打 印" onclick="doPrint()">&nbsp;&nbsp;
      <input name="button23" type="button" class="BUTTONs3" onClick="backPage();" value="返 回"></td>
    </tr>
</table>
</form>
</body>

</html>
