<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Top</title>
<script src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE2 {font-size: 9px}
.STYLE3 {
	color: #033d61;
	font-size: 12px;
	font-weight:blod;
}
-->
</style>
<script>
	
//链接转入middel.jsp页面ID为wdyframe的iframe显示
function urlTarget(urls) {
	$("#wdyframe",parent.document.body).attr("src",urls);
}

function dropSystem(){
	if(window.confirm("您确定要退出系统吗?")){
		fm.ActionType.value="dropSystem";
		fm.action="${pageContext.request.contextPath}/userlist";
		fm.submit();
		window.parent.location="${pageContext.request.contextPath}/login.jsp";
	}
}
</script>
</head>

<body>
<form name="fm" action="" method="post">
<input type="hidden" name="ActionType"/>
</form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="70" background="${pageContext.request.contextPath}/images/main_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="24" background="${pageContext.request.contextPath}/images/main_03.gif">&nbsp;</td>
            <td width="505" background="${pageContext.request.contextPath}/images/main_04.gif">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="21"><img src="${pageContext.request.contextPath}/images/main_07.gif" width="21" height="24"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="38" background="${pageContext.request.contextPath}/images/main_09.gif">&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="77%" height="25" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="50" height="19"><div align="center"><img src="${pageContext.request.contextPath}/images/main_12.gif"  width="49" height="19"></div>
                    </td>
                    <td width="50"><div align="center"><img src="${pageContext.request.contextPath}/images/main_14.gif" onclick="history.back();" width="48" height="19"></div></td>
                    <td width="50"><div align="center"><img src="${pageContext.request.contextPath}/images/main_16.gif" onclick="history.forward();" width="48" height="19"></div></td>
                    <td width="50"><div align="center"><img src="${pageContext.request.contextPath}/images/main_20.gif" onclick="dropSystem();" width="48" height="19"></div></td>
                    <td width="26"><div align="center"><img src="${pageContext.request.contextPath}/images/main_21.gif" width="26" height="19"></div></td>
                    <td>&nbsp;</td>
                  </tr>
                </table></td>
                <td width="220" valign="bottom"  nowrap="nowrap"><div align="right"><span class="STYLE1"><span class="STYLE2">■</span> 今天是：
                <% 
                	Date date = new Date(); 
                	String t = new SimpleDateFormat("yyyy-MM-dd").format(date);
                %>
                <%=t %></span></div></td>
              </tr>
            </table></td>
            <td width="21"><img src="${pageContext.request.contextPath}/images/main_11.gif" width="21" height="38"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="8" style=" line-height:8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" background="${pageContext.request.contextPath}/images/main_29.gif" style=" line-height:8px;">&nbsp;</td>
            <td width="505" background="${pageContext.request.contextPath}/images/main_30.gif" style=" line-height:8px;">&nbsp;</td>
            <td style=" line-height:8px;">&nbsp;</td>
            <td width="21" style=" line-height:8px;"><img src="${pageContext.request.contextPath}/images/main_31.gif" width="21" height="8"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="28" background="${pageContext.request.contextPath}/images/main_36.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" height="28" background="${pageContext.request.contextPath}/images/main_32.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20%"  height="22">&nbsp;</td>
            <td width="59%" valign="bottom"><div align="center" class="STYLE1">当前用户：${sessionScope.USER.userName }</div></td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr> 
                    <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"> <div align="center" class="STYLE3">欢</div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"><img src="${pageContext.request.contextPath}/images/main_34.gif" width="3" height="28"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" class="STYLE3">迎</div></td>
              </tr>
            </table></td>
            <td width="3"><img src="${pageContext.request.contextPath}/images/main_34.gif" width="3" height="28"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" class="STYLE3">【${sessionScope.USER.userName }】</div></td>
              </tr>
            </table></td>
            <td width="3"><img src="${pageContext.request.contextPath}/images/main_34.gif" width="3" height="28"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" class="STYLE3">登</div></td>
              </tr>
            </table></td>
            <td width="3"><img src="${pageContext.request.contextPath}/images/main_34.gif" width="3" height="28"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" class="STYLE3">录</div></td>
              </tr>
            </table></td>
            <td width="3"><img src="${pageContext.request.contextPath}/images/main_34.gif" width="3" height="28"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" class="STYLE3">本</div></td>
              </tr>
            </table></td>
            <td width="3"><img src="${pageContext.request.contextPath}/images/main_34.gif" width="3" height="28"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" class="STYLE3">系</div></td>
              </tr>
            </table></td>
            <td width="3"><img src="${pageContext.request.contextPath}/images/main_34.gif" width="3" height="28"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><div align="center" class="STYLE3">统</div></td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="21"><img src="${pageContext.request.contextPath}/images/main_37.gif" width="21" height="28"></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>