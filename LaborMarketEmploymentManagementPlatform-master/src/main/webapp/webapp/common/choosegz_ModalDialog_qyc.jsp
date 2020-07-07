<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>工种选择</title>
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath() %>/js/jquery-1.6.js"></script>
<script>
	$(function(){
		$("#dalei").change(function(){
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/gz/gzcx!selectZhonglei.action",
				data:{"id":$("#dalei").val()},
				success:function(data){
					alert(data.objs[0].name);
				},
				dataType:"json"
			});
		});
	});
</script>
<script>
	
	function doSubmit(){
		if(form1.gw.value==""){
			alert("岗位一项为必选项!");
			return;
		}
		if(form1.gz1.value==""){
			alert("下属工种1一项为必选项!");
			return;
		}
		if(form1.gz2.value==""){
			alert("下属工种2一项为必选项!");
			return;
		}
		if(form1.gz3.length>1&&form1.gz3.value==""){
			alert("请确认细类一项的选择内容!") 
			return;
		}
		var selectedValue;
		var selectedText
		if(form1.gz3.value==""){
			selectedValue = "\""+form1.gz2.options[form1.gz2.selectedIndex].value+"\"";
			selectedText = form1.gz2.options[form1.gz2.selectedIndex].text;
		}else{
			selectedValue = "\""+form1.gz3.options[form1.gz3.selectedIndex].value+"\"";
			selectedText = form1.gz3.options[form1.gz3.selectedIndex].text;
		}
		window.returnValue="<option></option><option selected value="+selectedValue+">"+selectedText+"</option>";
		window.close();
	}
	function escQuit(){
		if(event.keyCode==27){
			window.close();
		}
	}
</script>
</head>
<body leftmargin="0" topmargin="0" onkeypress="escQuit();">
<form name="form1" style="method">
<table  border="0" cellpadding="0" cellspacing="0" align="center"  width="100%">
	<tr class ="line4"> 
	  <td >&nbsp;</td>
	  <td >&nbsp;</td>
	  <td >&nbsp;</td>
	  <td >&nbsp;</td>
	</tr>
	<tr class ="line1"> 
	  <td align="right" >大&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	  <td id="gwtd">
		<select name="gw"  style="width:120px"  id="dalei">
		<c:forEach items="${list }" var="gz">
			<option value="${gz.cdId }">${gz.cdName }</option>
		</c:forEach>
			
		</select> 
		</td>
	  <td  align="right" >中&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	  <td width="33%" id="gz1td">
		<select name="gz1" style="width:120px"  onchange="initGz2()">

		</select></td>
	</tr>
	<tr class ="line2" > 
	  <td  align="right" >小&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	  <td id="gz2td">
		<select name="gz2" style="width:120px" onchange="initGz3()">

		</select></td>
	  <td align="right" >细&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	  <td id="gz3td">
		<select name="gz3"  style="width:120px" onchange="updateSelect4(this,form1.slt4)">
		</select>
		</td>
	</tr>
	<tr class ="line2">
	  <td  align="right" >工种代码</td>
	  <td ><input type=text name="gzdm" value="" readonly style="width:10em" maxlength="7">
	  </td>
	  <td  align="right" >工种名称</td>
	  <td  ><input type="text" name="gzmc" value="" readonly style="width:10em">
	  </td>
	</tr>
  </table>
  <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
  	<tr class ="line2">
	  <td  align="center">&nbsp;</td>
	</tr>
	<tr class ="line2">
	  <td  align="center"><input type="button" name="qued" value="确&nbsp;定" class="BUTTONs3" onclick="doSubmit()" style="cursor:hands"></td>
	</tr>
  </table>
 </form> 
</body>
</html>	