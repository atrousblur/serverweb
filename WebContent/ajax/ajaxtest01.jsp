<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function runAjax() {
		// 2. �񵿱������ �� �� �ִ� �ڹٽ�ũ��Ʈ ��ü�� ���� - XMLHttpRequest
		var xhr = new XMLHttpRequest();

		// 7. ������ ���� ��� ��� ó���� �� �������� ���� �ݹ��Լ� ������ �Ѵ�.
		xhr.onreadystatechange = function() {
			//alert("���°�: "+xhr.readyState);
			if (xhr.readyState == 4 && xhr.status == 200) {// ����ó��
				//alert(xhr.responseText);
				//responseText�� ajax ���� ����� ���䵥���� 
				document.getElementById("result").innerHTML = xhr.responseText;
			}
		}

		// 3. ��û�� ����
		xhr.open("GET", "/serverweb/ajaxtset01?id=" + myform.id.value, true);

		// 4. ��û ������
		xhr.send(); //get�϶��� ����ִ� send();
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