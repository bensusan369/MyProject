<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>单位推荐条件选择</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>
	function doSubmit(){
		form1.qd.disabled = true;
		form1.action = "<%=request.getContextPath()%>/jsp/zj/tjhz/dwtjfw_4.jsp";
		form1.submit();
	}
</script>
</head>
<body>
<form name="form1" action="" method="post">
<table width="98%" align="center" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
	  <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍
	    &gt; 推荐服务 &gt; 单位推荐服务</td>
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
    <td><input type="hidden" name="bio_id" value="<bean:write name='bio_id' scope='request'/>"></td>
    <td><input type="hidden" name="bio_bua_address" value="<bean:write name='bio_bua_address' scope='request'/>"></td>
    <td><input type="hidden" name="lxdh" value="<bean:write name='lxdh' scope='request'/>"></td>
			    <td  valign="bottom">单位名称：<a href="javascript:void(null)" style="cursor:hand" onclick="window.open('<%=request.getContextPath()%>/ldlsc/tjh','dwjbxx','left=100 top=100 width=820,height=469 scrollbars')" ></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单位地址：</td>
			  </tr>
</table>

<table width="98%" align="center" border="0" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" class="tablebody">
    <tr>
      <td class="line4">请选择招聘条件：&nbsp;&nbsp;&nbsp;提示：[<font color='red'>不可选工种为服务次数已满工种,不能进行推荐匹配</font>]</td>
    </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="tablebody">
    <tr>
      <td width="112" align="right" class="line1">查找个人求职工种为</td>
      <td class="line1">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            
						<td width="11%">
						<table border="0" cellspacing="2" cellpadding="0">
                        <tr>
                          <td><input name="zpgz" type="checkbox" class="radio" value=""  /></td>
                  		  <td class="line2">
                  		 
                  		  </td>
                		</tr>

              			</table>
              			</td>
						<td width="11%">
						<table border="0" cellspacing="2" cellpadding="0">
                        <tr>
                          <td><input name="zpgz" type="checkbox" class="radio" value="" disabled /></td>
                  		  <td class="line2">
                  		 
                  		  </td>
                		</tr>

              			</table>
              			</td>            

		  </tr>
        </table>
      </td>
    </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="1" bordercolor="#9DCBEC" class="tablebody">
  <tbody>
    <tr>
      <td width="16%" align="right" class="line2">性　　别</td>
      <td width="20%" align="center" class="line2"> <select name="xb" style="WIDTH: 100%">
		
        
        </select></td>
      <td width="12%" align="right" class="line2">婚姻状况</td>
      <td width="20%" align="center" class="line2"> <select name="hyzk" style="WIDTH: 100%">
		
        
        </select></td>
      <td width="11%"  align="right" class="line2">文化程度</td>
      <td width="20%" align="center" class="line2"> <select name="whcd" style="WIDTH: 100%">
		
					
        </select></td>
    </tr>
    <tr>
      <td align="right" class="line1">户籍性质</td>
      <td align="center" class="line1"><select name="hjxz" style="WIDTH: 100%">
		
        
        </select></td>
	  <td align="right" class="line2">人员类别</td>
      <td align="center" class="line2"><select name="rylb" style="WIDTH: 100%">
		
          
        </select></td>
     <td align="right" class="line1">健康状况</td>
      <td align="center" class="line1"><select name="jkzk" style="WIDTH:100%">
		
        
        </select></td>
    </tr>    
    <tr>
      <td align="right" class="line2">应届毕业生</td>
      <td align="center" class="line2"><select name="sfjygxbys" style="WIDTH: 100%">
		<option value=""></option>
		<option value="1">是</option>
		<option value="0">否</option>
        </select></td>
      <td align="right" class="line1">工作地区</td>
      <td align="center" class="line1"> <select name="gzdq" style="WIDTH: 100%">

        </select></td>
      <td align="right" class="line2">工种匹配范围</td>
      <td align="center" class="line2">
	      <SELECT NAME="gzppfw"  style="WIDTH: 100%">
		  <option value="0">小类</option>
		  <option value="1">细类</option>
		  </SELECT>
	  </td>
    </tr>
  <tr>
      <td align="right" class="line1">年　　龄</td>
	  <td align="left" class="line1"><input name="minnl" style="WIDTH:42%" maxlength="2">至<input name="maxnl" style="WIDTH:42%" maxlength="2"></td>
	  <td align="right" class="line1">身    高</td>
	  <td align="left" class="line1"><input name="sg" style="WIDTH:60%" maxlength="3">厘米</td>
	  <td align="right" class="line1">视    力</td>
	  <td align="left"  class="line1"><input name="leftsl" style="WIDTH:46%" maxlength="3">-<input name="rightsl" style="WIDTH:46%" maxlength="3">
	  </td>
  </tr>
</table>
<br>
<table width="98%" border="0" align="center" cellspacing="0" cellpadding="0">
    <tr>
      <td class="line2" align="center">
	      <input name="qd" type="button"class=BUTTONs3 value="确 定" onClick="doSubmit()">&nbsp;&nbsp;
	      <input name="qx" type="reset" class=BUTTONs3 value="取 消" >&nbsp;&nbsp;
	      <input name="back" type="button"class=BUTTONs3 onClick="toBack()" value="返 回">
	  </td>
    </tr>
</table>
</form>
</body>
</html>
