<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ajax Post</title>
<script type="text/javascript">
	var xhr;
	function runAjax() {
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = readyCallback;

		// post������� ajax ��û�ϱ�
		xhr.open("POST", "/serverweb/ajax_post.do", true);

		/*
		 post����� ��� open�޼ҵ忡 �Ķ���͸� �������� �ʰ� send�޼ҵ忡 �����ؼ�
		 request body�� �Ķ���Ͱ� ����Ǿ� ��û�� �� �ֵ��� ó���Ѵ�.
		�׷���....
		 request����� �Ӽ��� ����
		 key=value�� ���ڵ��� ����
		 ajax�� ����Ҷ��� submit��ư�� ������ó�� �Ķ���͸� name=vaule�� �����ؼ�
		 map�� ���·� ��ȯ�� �� �ֵ��� ����
		 */
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhr.send("num="+myform.num.value);
	}
	function readyCallback() {
		if (xhr.readyState == 4 && xhr.status == 200) { // ����ó��
			document.getElementById("result").innerHTML = xhr.responseText;

		}
	}
</script>
</head>
<body>
	<h1>Ajax �׽�Ʈ�ϱ�</h1>
	<form name="myform">
		<input type="text" name="id" />
		<!-- 1. ��ư�� ������ �ڹٽ�ũ��Ʈ �Լ��� ȣ���ϸ� ��û�� ������. -->
		<input type="button" value="ajax�׽�Ʈ" onclick="runAjax()" />
	</form>
	<div id="result"><%=request.getAttribute("msg")%></div>
</body>
</html>