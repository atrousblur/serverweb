<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	var xhr;
	function runAjax() {
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = readyCallback;

		// post������� ajax ��û�ϱ�
		xhr.open("POST", "/serverweb/ajaxgugu_post.do", true);
		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		xhr.send("num=" + myform.num.value);
	}

	function readyCallback() {
		if (xhr.readyState == 4 && xhr.status == 200) { // ����ó��
			document.getElementById("result").innerHTML = xhr.responseText;
		}
	}
</script>
</head>
<body>
	<h1>ajax �׽�Ʈ</h1>
	<form name="myform">
		�����Է��ϱ�(2~9) <input type="text" name="num" /> <input type="button"
			onclick="runAjax()" value="���������" />
	</form>
	<div id="result"><%=request.getAttribute("msg")%></div>
</body>
</html>