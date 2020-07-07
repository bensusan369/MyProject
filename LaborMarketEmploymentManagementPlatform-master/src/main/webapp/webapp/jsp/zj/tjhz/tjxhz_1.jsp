<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>推荐信回执查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>
   function doSubmit(){
		form1.cx.disabled = true;
		form1.qk.disabled = true;
		form1.action="<%=request.getContextPath()%>/servlet/tjhz/TjhzServlet?flag=1";
		form1.submit();
	}
  
</script>

</head>
<body>
<form name="form1" action="" method="post">
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td height="20" valign="bottom">d<img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍 
			&gt; 推荐服务 &gt; 推荐信回执</td>
	</tr>
	<tr>
		<td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
	</tr>
</table>
<table width="98%" border="0" cellpadding="0" cellspacing="0" 
		align="center"  class="title">
	<tr>
		<td width="30">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
				</tr>
			</table></td>
		<td  valign="bottom">查询条件&nbsp;&nbsp;&nbsp;提示：[请输入查询要回执推荐信的条件]</td>
	</tr>
</table>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="1">
	<tr class="line1"> 
		<td width="90" align="right" class="line2">身份证号码</td>
		<td width="" align="center" class="line2"><input name="citizenid" style="WIDTH: 100%"  maxlength="18"></td>
		<td width="90" align="right" class="line2">姓      名</td>
		<td width="" align="center" class="line2"><input name="bip_name" style="WIDTH: 100%" maxlength="32"></td>
	</tr>
	<tr class="line1"> 
		<td width="90" align="right" class="line1">单位法人码</td>
		<td width="" align="center" class="line1"><input name="bio_no" style="WIDTH: 100%"  maxlength="32"></td>
		<td width="90" align="right" class="line1">单位名称</td>
		<td width="" align="center" class="line1"><input name="bio_name" style="WIDTH: 100%"  maxlength="32"></td>
	</tr>
	<tr class="line1"> 
		<td width="90" align="right" class="line2">推荐日期起</td>
		<td width="" align="center" class="line2"><textarea name="tjFirstDate"  style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
		<td width="90" align="right" class="line2">至</td>
		<td width="" align="center" class="line2"><textarea name="tjLastDate"  style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
	</tr>
	<tr class="line1"> 
		<td width="90" align="right" class="line1">推荐信类型</td>
		<td width="" align="center" class="line1">
		<SELECT NAME="tjxType" style="WIDTH: 100%">
		<option value="">
		<option value="01">个人推荐信

		<option value="02">单位推荐信

		</SELECT>
		</td>
	</tr>
</table>
<br>
<table width="98%" align="center"
	border="0" cellPadding="0" cellSpacing="1" bordercolor="#FFFFFF" class="tablebody">
	<tr align="center"> 
		<td height="25" align="center" class="line2"> <input name="cx" type="button" class="BUTTONs3" value="查 询" onClick=doSubmit()>
			&nbsp;&nbsp;<input name="qk" type="reset"class="BUTTONs3" value="取 消"> 
		 </td>
	</tr>
</table> 
</form>
</body>
</html>
