<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>

</script>
</head>
<body>
<form method="post" action="" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
          当前位置：职业介绍 &gt; 个人求职 &gt; 冻结解冻&gt; 个人详细信息</td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table></td>
  </tr>
   <tr>
    <td align="center" valign="top">
	<table width="98%" border="0" cellpadding="0" cellspacing="0"   class="title">
      <tr>
        <td width="30">
		<table width="30" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table></td>
        <td  valign="bottom">查询结果&nbsp;&nbsp;&nbsp;</td>
      </tr>
    </table>
  <tr>
    <td align="center" valign="top" > 
    <logic:present name="list" scope="request">
<logic:iterate name="list" id="info" scope="request"> 
      <TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class="tablebody">
          <TBODY>
            <TR align="center" class="line4"> 
             <TD width="10%">姓名</TD>
             <TD width="10%">身份证</TD>
             <TD width="10%">出生年月日</TD>
             <TD width="10%">身高</TD>
             <TD width="10%">体重</TD>
             <TD width="10%">左眼视力</TD>
             <TD width="10%">右眼视力</TD>  
            </TR>
 
 <TR align="center" class="line3"> 
              <TD width="10%"><bean:write name="info" property="bip_name"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_citizenid"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_birthday"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_long"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_weight"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_eyesightleft"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_eyesightright"/></TD>
              </TR>
 </TBODY>
</TABLE>
      <TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class="tablebody">
          <TBODY>
             <TR align="center" class="line4"> 
               <TD width="10%">居住地址</TD>
               <TD width="10%">联系电话</TD>
               <TD width="10%">手机</TD>
               <TD width="10%">电子邮件</TD>
               <TD width="10%">毕业院校</TD>
               <TD width="10%">专业</TD>
               <TD width="10%">第二学历</TD>
              
             </TR>
   			<TR align="center" class="line3"> 
              <TD width="10%"><bean:write name="info" property="bip_res_address"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_con_contacttel"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_con_mobile"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_con_email"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_graduateschool"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_subject"/></TD>
              <TD width="10%"><bean:write name="info" property="bip_educationallevel2"/></TD>
            
   			</TR>
 		</TBODY>
	</TABLE>
</logic:iterate>
</logic:present>


<TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class="tablebody">
          <TBODY>
             <TR  align="center" class="line4"> 
               <TD width="10%">冻结时间</TD>
               <TD width="10%">冻结原因</TD>
                <TD width="10%">解冻时间</TD>
               <TD width="10%">解冻原因</TD>
               </TR>
               
<logic:present name="list1" scope="request">
<logic:iterate name="list1" id="inf" scope="request">	               
               <TR  align="center" class="line4"> 
               <TD width="10%"><bean:write name="inf" property="djtime"/></TD>
               <TD width="10%"><bean:write name="inf" property="djreason"/></TD>
                 <TD width="10%"><bean:write name="inf" property="jdtime"/></TD>
               <TD width="10%"><bean:write name="inf" property="jdreason"/></TD>
               </TR>
 </logic:iterate>
</logic:present>               
   		</TBODY>
	</TABLE>	


               

             
              
	
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
	<tr><td>&nbsp;</td></tr>
	<tr align="center" class="line2"> 
		<td> 
		<input name="button1" type="button" class="BUTTONs3" onClick="javascript:window.parent.parent.close()" value="关 闭">
		</td>
	</tr>
</table>
</td>
</tr>
</table> 
</form>	
</body>
</html>
