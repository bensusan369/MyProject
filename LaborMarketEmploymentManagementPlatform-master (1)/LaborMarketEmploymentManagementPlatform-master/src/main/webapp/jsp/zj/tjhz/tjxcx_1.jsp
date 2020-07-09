<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>推荐情况查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
<form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍 
            &gt; 推荐服务 &gt; 推荐情况查询</td>
        </tr>
        <tr> 
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td align="center" valign="top"><TABLE width="98%" border=0 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
     <TR>
            <TD width="30" height=20 class="title"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif" width="30" height="19"></TD>
            <TD class="title" style="padding-top:5px">查询条件</TD>
     </TR>
    </TABLE>
      <table width="98%" border="0" cellspacing="1" cellpadding="0">
        <tr class="line2">
          <td width="13%" align="right">性　　别</td>
          <td width="13%"><select name="xb" style="width:100%">
				<option value=""/>
				
          </select>          </td>
          <td width="13%" align="right">户籍性质</td>
          <td width="13%"><select name="hjxz" style="width:100%">
				<option value="">
				
          </select>          </td>
          <td width="13%" align="right" >年　　龄</td>
          <td width="13%"><input name="zxnl" style="WIDTH: 100%" maxlength="2"></td>
          <td width="5%" align="center">至</td>
          <td width="13%"><input name="zdnl" style="WIDTH: 100%" maxlength="2"></td>
        </tr>
        <tr class="line1">
          <td align="right">人员类别</td>
          <td><select name="rylb" style="width:100%">
				<option value="">
			
          </select>          </td>
          <td align="right">求职岗位</td>
          <td><select name="qzgz" style="width:100%">
			<option value="">
          </select>          </td>
          <td align="right">学　　历</td>
          <td><select name="zdxl" style="width:100%">
				 <option value="">
				
          </select>          </td>
          <td align="center">至</td>
          <td><select name="zgxl" style="width:100%">
				<option value="">
				
          </select>          </td> 
        </tr>
        <tr class="line2">
          <td align="right">单位类型</td>
          <td><select name="dwlx" style="WIDTH: 100%">
						<option value="">请选择</option>
						
            </select></td>
          <td align="right">岗位类别</td>
          <td><select name="gwlb" style="WIDTH: 100%">
						<option value="">请选择</option>
						
						</select></td>
          <td align="right">登记时间</td>
          <td><textarea name="djkssj"  style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
          <td align="center">至</td>
          <td><textarea name="djjssj"  style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
        </tr>
        <tr class="line1">
		  <td align="right">回执状态</td>
          <td><select name="sfcg" style="width:100%">
		  <option value="">
		  <option value="1">成功
		  <option value="0">未成功


		  <option value="-1">未回执


          </select>          </td>
          <td width="60" align="right">推荐时间</td>
          <td width="100" align="center"><textarea name="tjkssj"  style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10'></textarea></td>
          <td width="15" align="center">至</td>
          <td width="100" align="center"><textarea name="tjjssj"  style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10'></textarea></td>
        </tr>
      </table>
      <table width="98%%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr class="line2">
          <td align="center">
            <input name="bc" type="button"class="BUTTONs3" value="查 询" onclick="window.location.href='tjxcx_2.jsp'">
            &nbsp;&nbsp;&nbsp;&nbsp;<INPUT name="qk" type="reset"class=BUTTONs3  value="取 消">
          </td>
        </tr>
      </table>
  </tr>
</table>
</form>
</body>
</html>
