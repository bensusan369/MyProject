<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>xxcx_1</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>
function showDialog(){
		var dx,dy;
		var dx=(screen.height/2-105)+"";
	   	var dy=(screen.width/2-200)+"";
		var rValue,iTem;
		rValue=window.showModalDialog("<%=request.getContextPath()%>/common/choosegz_ModalDialog_qyc.jsp","四级联动","dialogTop="+dx+";dialogLeft="+dy+";dialogHeight=210px;dialogWidth=400px;help=no;fullscreen=1;status=no;center=yes");
		if(rValue != null){
			var id = document.getElementById("o1");
			var qzgz1 = document.getElementById("zpgz");
			id.removeChild(qzgz1);
			id.innerHTML="<select name='zpgz' size='1'  style='WIDTH: 100%'  onclick='showDialog()'>"+rValue+"</select>";
		}
		return;
	}
</script>
</head>
<body>
<form method="post"	name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍 
            &gt; 单位招聘 &gt; 信息查询</td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table></td>
  </tr>
</table>  
<table width="100%" border="0" cellspacing="0" cellpadding="0">
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
        <td  valign="bottom">查询条件&nbsp;&nbsp;&nbsp;提示：[默认统计职介为本职介]</td>
      </tr>
    </table>
    </td>
    </tr>
</table>    
<TABLE width="98%" align="center"
	border="0" cellPadding="0" cellSpacing="0" bordercolor="#FFFFFF" class="tablebody">
	<tr>
    <td width="58%" valign="top">		
		<TABLE width="100%" align="center"
			border="0" cellPadding="0" cellSpacing="0" bordercolor="#FFFFFF" class="tablebody">
        <tr class="line2">
          <td width="75" align="right">单位法人码</td>
          <td> 
            <INPUT  name="dwfrm" style="WIDTH: 100%" maxlength="18" ></td>
          <td width="55" align="right">单位名称</td>
          <td><INPUT  name="dwqc"  style="WIDTH: 100%" maxlength="18" ></td>

        </tr>
        <tr class="line2">
          <td align="right">登记时间</td>
          <td><textarea name="djrqq" style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath()%>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
          <td width="50" align="center">至</td>
          <td><textarea name="djrqz" style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath()%>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>

        </tr>
        <tr class="line2">
          <td align="right">经济类型</td>
          <td><select name="dwjjlx" size=1 style="WIDTH: 100%">
						<option value="">请选择</option>
				
            </select></td>
          <td align="right">单位性质</td>
          <td><select name="dwxz" size=1 style="WIDTH: 100%">
						<option value="">请选择</option>
				
            </select></td>
        </tr>
        <tr class="line2">
          <td align="right">岗位类别</td>
          <td><select name="gwlb" size=1 style="WIDTH: 100%">
						<option value="">请选择</option>
						
						</select></td>
          <td align="right">招聘岗位</td>
          <td id="o1"><select name="zpgz"	style="WIDTH: 100%" onclick="showDialog()">
						<option value="">请选择</option>
						</select></td>
        </tr>
        <tr class="line2">
          <td align="right">人员类别</td>
          <td><select name="rylb" size=1 style="WIDTH: 100%">
						<option value="">请选择</option>
						
						</select></td>        
          <td align="right">户籍性质</td>
          <td><select name="hjxz" size=1 style="WIDTH: 100%">
						<option value="">请选择</option>
						
						</select></td>
        </tr>
        <tr class="line2">
          <td  align="right">查询范围</td>
          <td class="line2"><select name="cxfw" size=1 style="WIDTH: 100%">
					<option value="dq" selected>当前</option>
					<option value="gd">归档</option>
					<option value="qb">全部</option>
          </select></td>  
      
          <td align="right">单位行业</td>
          <td><select name="dwhy" size=1 style="WIDTH: 100%">
						<option value="">请选择</option>
						
            </select></td>   
		</tr>
      </table>
      <TABLE width="100%" 
        border=0 cellPadding=0 cellSpacing=1 bordercolor="#9DCBEC" class="tablebody">
        <TR align="center"> 
          <TD align="center" class="line2"> 
            <input name="bc" type="button"class="BUTTONs3" id="bc" value="查 询" onClick="window.location.href='<%=request.getContextPath() %>/jsp/zj/dwzp/xxcx_2.jsp'" > 
            &nbsp; <INPUT name="qk" type="reset"class="BUTTONs3" value="取 消"> 
            &nbsp;&nbsp;</TD>
        </TR>
      </TABLE>
	 </td>
  </tr>
</table>
</form>
</body></html>
