<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function runAjax() {
		//alert("test");
		location.href="/serverweb/notajax?id="+myform.id.value; //get방식일 때만 쓰는 방법
	}
</script>
</head>
<body>
	<h1>Ajax 테스트하기</h1>
	<form name="myform">
		<input type="text" name="id" /> 
		<input type="button" value="ajax테스트" onclick="runAjax()" />
	</form>
	<div id="result"><%= request.getAttribute("msg") %></div>
</body>
</html>