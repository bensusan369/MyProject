function confirmModifyPwd() {
	if (fm.newloginpwd.value == '') {
		alert("���������д!");
		fm.newloginpwd.focus();
		return false;
	}
	if (fm.againpwd.value == '') {
		alert("���ٴ���������!");
		fm.againpwd.focus();
		return false;
	}
	if (fm.newloginpwd.value = fm.loginpwd.value) {
		alert("�����벻����ԭ������ͬ,��������д");
		fm.againpwd.value = "";
		fm.newloginpwd.value = "";
		fm.newloginpwd.focus();
		return false;
	}
	fm.ActionType.value = "modifyPwd";
	fm.action = "${pageContext.request.contextPath}/user";
	fm.submit();
}

function checkPwd() {
	var pwd = $("#pwd").val();
	var reg = /^[a-z0-9_]{3,16}$/;
	if (!reg.test(pwd)) {
		$("#lblpwd").html("��ʽ����ȷ");
		$("#lblpwd").css( {
			color : "red",
			font : "12px"
		});
		return false;
	} else {
		$("#lblpwd").html("&radic;");
		$("#lblpwd").css( {
			color : "green",
			font : "12px"
		});
		return true;
	}
}

function getpassword() {
	var pwd = document.getElementById("pwd").value;
	var pwd1 = document.getElementById("pwd1").value;
	if (pwd != pwd1) {
		document.getElementById("label1").innerHTML = "������������벻һ��";
		$("#label1").css( {
			color : "red",
			font : "12px"
		});
		return false;
	} else {
		document.getElementById("label1").innerHTML = "";
		$("#label1").html("&radic;");
		$("#label1").css( {
			color : "green",
			font : "12px"
		});
		return true;
	}
}

function resetForm() {
	fm.reset();
}

function checkLoginPwd() {
	if (fm.loginpwd.value == null || fm.loginpwd.value == "") {
		alert("ԭ�����Ǳ����");
		fm.loginpwd.focus();
	}
	var ajax = getXmlHttpRequest();
	var url = "${pageContext.request.contextPath}/user?ActionType=checkLoginPwd&loginpwd="
			+ fm.loginpwd.value + "&loginname=" + fm.loginname.value;
	ajax.open('GET', url, true);
	ajax.onreadystatechange = function() {
		if (ajax.readyState == '4') {
			if (ajax.status == '200') {
				var returnText = ajax.responseText.split("+");
				if (fm.loginpwd.value != null && fm.loginpwd.value != "") {
					if (returnText[0] == "SUCCESS") {
						document.getElementById("ajaxmessage").innerHTML = "<FONT color='green' size='2'>"
								+ returnText[1] + "</FONT>";
					} else {
						document.getElementById("ajaxmessage").innerHTML = "<FONT color='red' size='2'>"
								+ returnText[1] + "</FONT>";
					}
				}
			}
		}
	};
	ajax.send(null);
}

function getXmlHttpRequest() {
	if (window.XmlHttpRequest) {
		return new XmlHttpRequest();
	} else {
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				return new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				alert("���������ǻ��������?");
				return false;
			}
		}
	}
}
