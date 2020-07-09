<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>dwdj_7_insertzpgzxx</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/js/commonjs.js"></script>
<script>
	function doInsert(){
		if(form1.zpgz.value==""){
			alert("职业名称不能为空!");
			return;
		}
		if(form1.xbbx.value==""&&form1.nvrs.value==""&&form1.nars.value==""){
			alert("招聘人数不能为空!");
			return;
		}
		if(form1.ygxs.value==""){
			alert("用工形式不能为空!");
			return;
		}
		if(form1.fwcslx.options[form1.fwcslx.selectedIndex].value=="2"){
			if(form1.fwcs.value==""){
				alert("您已经选择了自定义服务次数,请填写服务次数");
				return;
			}
		}
		if(!testNum(form1.fwcs.value)){
			alert("服务次数需为数字!");
			return;
		}
		form1.bc.disabled=true;
		form1.fh.disabled=true;
		form1.action="<%=request.getContextPath()%>/ldlsc/dw/dwdj.do?method=insertZpgzxx";
		form1.submit();
	}
	function setZymc(){
		var rtValue;
		var dx=(screen.height/2-85)+"";
   		var dy=(screen.width/2-200)+"";
		rtValue=window.showModalDialog("<%=request.getContextPath()%>/common/choosegz_ModalDialog_qyc.jsp","工种选择","dialogTop="+dx+";dialogLeft="+dy+";dialogHeight=170px;dialogWidth=400px;help=no;fullscreen=1;status=no;center=yes");
		if(rtValue!=undefined&&rtValue!=""){
			document.all.zpgztd.removeChild(form1.zpgz);
			document.all.zpgztd.innerHTML="<select name=\"zpgz\" style=\"WIDTH: 100%\" onclick=\"setZymc()\">"+rtValue+"</select>";
		}
	}
	function setZyjn(){
		var rtValue;
		var dx=(screen.height/2-85)+"";
   		var dy=(screen.width/2-200)+"";
		rtValue=window.showModalDialog("<%=request.getContextPath()%>/common/choosegz_ModalDialog_qyc.jsp","工种选择","dialogTop="+dx+";dialogLeft="+dy+";dialogHeight=170px;dialogWidth=400px;help=no;fullscreen=1;status=no;center=yes");
		if(rtValue!=undefined&&rtValue!=""){
			document.all.zpjntd.removeChild(form1.jyzyjn);
			document.all.zpjntd.innerHTML="<select name=\"jyzyjn\" style=\"WIDTH: 100%\" onclick=\"setZyjn()\">"+rtValue+"</select>";
		}
	}
	/*
	function operateZprs(){
		if(form1.xbbx.value==""&&(form1.nvrs.value!=""||form1.nars.value!="")){
			document.all.xbbxtd.removeChild(form1.xbbx);
			document.all.xbbxtd.innerHTML="<INPUT name=\"xbbx\" size=\"8\" style=\"WIDTH: 100%\" maxlength=\"3\" readonly>";
		}else if(form1.xbbx.value!=""&&(form1.nvrs.value==""&&form1.nars.value=="")){
			document.all.narstd.removeChild(form1.nars);
			document.all.narstd.innerHTML="<INPUT name=\"nars\" size=\"8\" style=\"WIDTH: 100%\" maxlength=\"3\" readonly>";
			document.all.nvrstd.removeChild(form1.nvrs);
			document.all.nvrstd.innerHTML="<INPUT name=\"nvrs\" size=\"8\" style=\"WIDTH: 100%\" maxlength=\"3\" readonly>";
		}else if(form1.xbbx.value==""&&form1.nvrs.value==""&&form1.nars.value=="")){
			document.all.xbbxtd.removeChild(form1.xbbx);
			document.all.xbbxtd.innerHTML="<INPUT name=\"xbbx\" size=\"8\" style=\"WIDTH: 100%\" maxlength=\"3\" onblur=\"operateZprs();\">";
			document.all.narstd.removeChild(form1.nars);
			document.all.narstd.innerHTML="<INPUT name=\"nars\" size=\"8\" style=\"WIDTH: 100%\" maxlength=\"3\" onblur=\"operateZprs();\">";
			document.all.nvrstd.removeChild(form1.nvrs);
			document.all.nvrstd.innerHTML="<INPUT name=\"nvrs\" size=\"8\" style=\"WIDTH: 100%\" maxlength=\"3\" onblur=\"operateZprs();\">";
		}
	}
	*/
	function operateFwcs(){
		if(form1.fwcslx.options[form1.fwcslx.selectedIndex].value=="1"){
			document.all.fwcstd.removeChild(form1.fwcs);
			document.all.fwcstd.innerHTML="<input name=\"fwcs\" style=\"WIDTH: 100%\" maxlength=\"4\" value=\"10\" readonly>";
		}else if(form1.fwcslx.options[form1.fwcslx.selectedIndex].value=="2"){
			document.all.fwcstd.removeChild(form1.fwcs);
			document.all.fwcstd.innerHTML="<input name=\"fwcs\" style=\"WIDTH: 100%\" maxlength=\"4\" value=\"\">";
		}
	}
</script>
</head>
<body>
<form method="post"	name="form1" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom">
		  <img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
		  当前位置：职业介绍 &gt; 单位登记 &gt; 新增招聘工种信息</td>
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
            <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table></td>
        <td  valign="bottom">招聘信息[公司名称法人码]</td>
      </tr>
    </table>
 	<table width="98%" border="0" cellpadding="0" cellspacing="1" >
          	<tr class="line2">
		    		  <td align="right" width="13%"><span class="redtxt">*</span>经办人</td>
		              <td align="right" width="20%"><INPUT  name="dwlxr"  style="WIDTH: 100%" maxlength="32" value=""></td>
		              <td align="right" width="13%">身份证</td>
		              <td align="right" width="20%"><INPUT  name="lxrsfzhm" style="WIDTH: 100%" maxlength="32" value=""></td>
		              <td align="right" width="13%">手机</td>
		              <td align="right" width="20%"><input  name="lxrsj" style="WIDTH: 100%" maxlength="11" value=""></td>
		         </tr>
		       <tr >
				  <td colspan="6" valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8">
           			 <img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
              </tr>
			<tr class="line2">
				<td  align="right" ><span class="redtxt">*</span>招聘工种</td>
				<td id="zpgztd">
				<select name="zpgz"	style="WIDTH: 100%" onclick="setZymc()">
							<!--弹出ModalDialog-->
				</select></td>
				<td  align="right"  >岗位名称</td>
				<!-- 登记默认岗位类别为日常招聘岗位 -->
				<td align="left"  ><INPUT name="zpgzbm" style="WIDTH: 100%" maxlength="16"></td>
				<td align="right" >岗位类别</td>
				<td  ><select name="gwlb" style="WIDTH: 100%">
				${Zjdgwlb}
				
				</select></td>
			</tr>
		    <tr class="line1">
			<td  align="right" ><span class="redtxt">*</span>招聘人数</td>
			<td colspan="3">男<INPUT name="nars" size="1">女<INPUT name="nvrs" size="1">不限<INPUT name="xbbx" size="1" ></td>		
			<td  align="right" >户籍性质</td>
			<td ><select name="hjxz" style="WIDTH: 100%">
			${Rprtype}
				
				</select>
			</td>				
		</tr>
		<tr class="line2">
			<td  align="right"  width="140">开始时间</td>
			<td ><textarea name="fbkssj" style="WIDTH: 100%" class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date'></textarea></td>

			<td  align="right" >截至时间</td>
			<td ><textarea name="fbjssj"  style="WIDTH: 100%" class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date'></textarea></td>					
			<td align="right">年龄</td>
			<td>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="45%"><INPUT name="zxnl" style="WIDTH: 100%" maxlength="2"></td>
						<td width="10%">至</td>
						<td width="45%"><INPUT name="zdnl" style="WIDTH: 100%" maxlength="2"></td>
					</tr>
				</table>
			</td>					
		</tr>
		<tr class="line1">
			<td  align="right"  width="140">文化程度</td>
			<td ><select name="whcd" style="WIDTH:100% ">
			${Educationallevel}
				
				
		  </select></td>

			<td  align="right" ><span class="redtxt">*</span>用工形式</td>
			<td ><select name="ygxs" style="WIDTH: 100%">
			${Employtype}
				
				</select>
			</td>

			<td  align="right" >月薪</td>
			<td >
				<table  width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="45%"><INPUT name="zdyx" style="WIDTH: 100%" maxlength="5" onblur="checkJe(this);"></td>
						<td width="10%">至</td>
						<td width="45%"><INPUT name="zgyx" style="WIDTH: 100%" maxlength="5" onblur="checkJe(this);"></td>
					</tr>
		     </table></td>

		</tr>
		<tr class="line2">
			<td  align="right" >婚姻状况</td>
			<td ><select name="hyzk" style="WIDTH: 100%">
			${Marriage}
			
                    		</select></td>
			<td  align="right" >健康状况</td>
			<td ><select name="jkzk" style="WIDTH: 100%">
			${Healthstate}
                      
                     	</select></td>
			<td  align="right" >招用应届生</td>
			<td ><select name="sfyjgxbys" style="WIDTH: 100%">
                       <option value=""></option>
                       <option value="1">是</option>
                       <option value="0">否</option>
                     </select></td>
		</tr>
		<tr class="line2">
			<td  align="right" >人员类别</td>
			<td ><select name="rylb" style="WIDTH: 100%">
			${Personneltype}
				
				 </select>
			</td>
			<td  align="right" >招聘地区</td>
			<td ><select name="zpdq" style="WIDTH: 100%">
			${Regioncode}
					
                      </select></td>
						<td  align="right" ></td>
			<td ></td>

		</tr>
		
		<tr class="line1">
		<td  align="right" >计算机等级</td>
			<td ><select name="jsjdj" style="WIDTH: 100%">
			${Computergrade}
                     	
                     	</select></td>
			<td  align="right">熟练程度</td>
			<td ><select name="jsjslcd" style="WIDTH: 100%">
			${Proficiency}
                      
                     </select></td>
		</tr>
		<tr class="line2">
			<td  align="right" >具有外语</td>
			<td ><select name="jyyz" style="WIDTH: 100%">
			${Language}
		
		  		</select></td>
			<td  align="right" >熟练程度</td>
			<td ><select name="yzslcd" style="WIDTH: 100%">
			${Proficiency}
					
		  		</select></td>
			
		</tr>
		<tr class="line1">
			<td  align="right" >工作地点</td>
		    <td colspan="5"><INPUT name="gzdd"  style="WIDTH: 100%"></td>
			
		</tr>
		<tr  class="line2">
			<td  align="right" >岗位描述</td>
			<td ><textarea name="gwms" style="width:152"></textarea></td>
			<td align="right"  width="140">其他说明</td>
		  <td colspan="3"><textarea name="fldy" style="width:100%"></textarea></td>
		</tr>
	
</table>
<tr>
<td>
<TABLE width="100%" border=0 cellPadding=0 cellSpacing=1 class="tablebody" align="center">
	<tr height="15px">
		<td></td>
	</tr>
  <TR align="center"> 
    <TD class="line2"> <input name="bc" type="button" class="BUTTONs3" value="保 存" onClick="doInsert();">
      &nbsp;&nbsp;
      <INPUT name="fh" type="button" onclick="window.history.back();" class="BUTTONs3" value="返 回"> 
    </TD>
  </TR>
</TABLE>
</td>
</tr>
</table>
</form>
</body>
</html>
