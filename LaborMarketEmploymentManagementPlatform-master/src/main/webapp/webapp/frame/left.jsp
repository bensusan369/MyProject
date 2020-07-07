<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Left</title>
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
.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
-->
</style>
<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}

</style>

<script>
	
//链接转入main.jsp页面ID为wdyframe的iframe显示
function urlTarget(urls) {
	$("#wdyframe",parent.document.body).attr("src",urls);
}


</script>
	</head>

<body>
<form name="fm" action="" method="post">
<input type="hidden" name="ActionType">
<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="${pageContext.request.contextPath}/images/main_40.gif">
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      		<tr>
        		<td width="19%">&nbsp;</td>
        		<td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
      		</tr>
    	</table>
    </td>
  </tr>
  <tr>
    <td valign="top">
    	<table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
	      <tr>
	        <td>
	          <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          	<tr>
	           	 <td height="23" background="${pageContext.request.contextPath}/images/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand">
	           	 	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	              	  <tr>
	                   <td width="18%">&nbsp;</td>
	                   <td width="82%" class="STYLE1">单位操作中心</td>
	                 </tr>
	               </table>
	             </td>
	          	</tr>
	          	<tr>
	            	<td background="${pageContext.request.contextPath}/images/main_51.gif" id="submenu1">
				 		<div class="sec_menu" >  
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
	              				<tr>
	                			  <td>
	                			  	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
	                  					<tr>
						                    <td width="16%" height="25"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
						                    <td width="84%" height="23">
						                    	<table width="95%" border="0" cellspacing="0" cellpadding="0">
	                        					  <tr>
	                          						<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/dwzp/dwdj_1.jsp');">单位登记</a></span></td>
	                        					  </tr>
	                    						</table>
	                    					</td>
	                  					</tr>
	                  					<tr>
	                    					<td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                    					<td height="23">
	                    						<table width="95%" border="0" cellspacing="0" cellpadding="0">
							                      <tr>
							                        <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3" ><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/dwzp/dwdj_dj_1.jsp');">单位冻结解冻</a></span></td>
							                      </tr>
	                    						</table>
	                    					</td>
	                  					</tr>
					                  	<tr>
						                  	<td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
						                    <td height="23">
						                    	<table width="95%" border="0" cellspacing="0" cellpadding="0">
					                        		<tr>
					                          			<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/dwzp/dwgd_1.jsp');">单位归档</a></span></td>
					                        		</tr>
					                    		</table>
					                    	</td>
					                  	</tr>
					                  	<tr>
						                   	<td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
						                    <td height="23">
						                    	<table width="95%" border="0" cellspacing="0" cellpadding="0">
							                        <tr>
							                          <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/dwzp/xxcx_1.jsp');">单位查询</a></span></td>
							                        </tr>
					                    		</table>
					                    	</td>
					                   </tr>
					                   <tr>
						                   	<td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
						                    <td height="23">
						                    	<table width="95%" border="0" cellspacing="0" cellpadding="0">
							                        <tr>
							                          <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/dwzp/dwdjcx_1.jsp');">单位冻结解冻查询</a></span></td>
							                        </tr>
					                    		</table>
					                    	</td>
					                   </tr>
	                				</table>
	                			</td>
	             		 	</tr>
			             	<tr>
			              	   <td height="5"><img src="${pageContext.request.contextPath}/images/main_52.gif" width="151" height="5" /></td>
			             	</tr>
	            	 	</table>
	            	 </div>
	          	  </td>
	           </tr>
		   </table>
	    </td>
     </tr>
     
	      <tr>
	        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td height="23" background="${pageContext.request.contextPath}/images/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                <tr>
	                  <td width="18%">&nbsp;</td>
	                  <td width="82%" class="STYLE1">求职操作中心</td>
	                </tr>
	            </table></td>
	          </tr>
	          <tr>
	            <td background="${pageContext.request.contextPath}/images/main_51.gif" id="submenu2"><div class="sec_menu" >
	                <table width="100%" border="0" cellspacing="0" cellpadding="0">
	                  <tr>
	                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
	                        <tr>
	                          <td width="16%" height="25"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/grqz/qzdj_1.jsp');">求职登记</a></span>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/grqz/qzdjjd_1.jsp');">求职冻结解冻</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/grqz/qzgd_1.jsp');">求职归档</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/grqz/xxcx_1.jsp');">个人查询</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/grqz/qzdjcx_1.jsp');">求职冻结解冻查询</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                    </table></td>
	                  </tr>
	                  <tr>
	                    <td height="5"><img src="${pageContext.request.contextPath}/images/main_52.gif" width="151" height="5" /></td>
	                  </tr>
	                </table>
	            </div></td>
	          </tr>
	        </table>          </td>
	      </tr>
	      
	        <tr>
	        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td height="23" background="${pageContext.request.contextPath}/images/main_47.gif" id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                <tr>
	                  <td width="18%">&nbsp;</td>
	                  <td width="82%" class="STYLE1">推荐中心</td>
	                </tr>
	            </table></td>
	          </tr>
	          <tr>
	            <td background="${pageContext.request.contextPath}/images/main_51.gif" id="submenu3"><div class="sec_menu" >
	                <table width="100%" border="0" cellspacing="0" cellpadding="0">
	                  <tr>
	                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
	                        <tr>
	                          <td width="16%" height="25"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/tjhz/dwtjfw_1.jsp');">单位推荐</a></span>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/tjhz/grtjfw.jsp');">个人推荐</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/tjhz/tjxhz_1.jsp');">推荐回执</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/zj/tjhz/tjxcx_1.jsp');">推荐查询</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                    </table></td>
	                  </tr>
	                  <tr>
	                    <td height="5"><img src="${pageContext.request.contextPath}/images/main_52.gif" width="151" height="5" /></td>
	                  </tr>
	                </table>
	            </div></td>
	          </tr>
	        </table>          </td>
	      </tr>
	      
	      
	      <tr>
	        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td height="23" background="${pageContext.request.contextPath}/images/main_47.gif" id="imgmenu4" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(4)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                <tr>
	                  <td width="18%">&nbsp;</td>
	                  <td width="82%" class="STYLE1">系统管理</td>
	                </tr>
	            </table></td>
	          </tr>
	          <tr>
	            <td background="${pageContext.request.contextPath}/images/main_51.gif" id="submenu4" style="DISPLAY: none"><div class="sec_menu" >
	                <table width="100%" border="0" cellspacing="0" cellpadding="0">
	                  <tr>
	                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
	                        <tr>
	                          <td width="16%" height="25"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/user/searchldlscUser.do');">用户管理</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="23"><div align="center"><img src="${pageContext.request.contextPath}/images/left.gif" width="10" height="10" /></div></td>
	                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a onclick="urlTarget('${pageContext.request.contextPath}/jsp/user/updatePwd.jsp');">修改密码</a></span></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                      
	                    </table></td>
	                  </tr>
	                  <tr>
	                    <td height="5"><img src="${pageContext.request.contextPath}/images/main_52.gif" width="151" height="5" /></td>
	                  </tr>
	                </table>
	            </div></td>
	          </tr>
	        </table></td>
	      </tr>
      
    	</table>
    </td>
  </tr>
  <tr>
    <td height="18" background="${pageContext.request.contextPath}/images/main_58.gif">
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
     	 <tr>
       	   <td height="18" valign="bottom"><div align="center" class="STYLE3">版本：2014V1.0</div></td>
     	 </tr>
   	 	</table>
    </td>
  </tr>
</table>
	</form>

<script>

function showsubmenu(sid){
	whichEl = eval("submenu" + sid);
	imgmenu = eval("imgmenu" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
		imgmenu.background="${pageContext.request.contextPath}/images/main_47.gif";
	}
	else{
		eval("submenu" + sid + ".style.display=\"none\";");
		imgmenu.background="${pageContext.request.contextPath}/images/main_48.gif";
	}
}
</script>
</body>
</html>