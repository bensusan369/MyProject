function gotoAddPage( a ){
	var hidEle = document.createElement("<input type='hidden'>");
	hidEle.name = "ActionType";
	hidEle.value = "GOTOADDPAGE";
	fm.appendChild(hidEle);
	fm.action = '${pageContext.request.contextPath }/'+a;
	alert(fm.action);
	fm.submit();
}