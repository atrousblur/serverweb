<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#ajaxbtn").on("click", function() {
			$.get("/serverweb/ajaxtest01", {"id" : $("#id").val()}, success_run)	// get방식일때만 사용 가능
		})
	})

	function success_run(txt) {
		$("#result").html("<h2>get:" + txt+"</h2>");
	}
</script>
<body>
	<h1>Ajax 테스트하기(JQuery...GET)</h1>
	<form name="myform">
		<input type="text" name="id" id="id" /> <input type="button"
			value="ajax테스트" id="ajaxbtn" />
	</form>
	<div id="result"></div>
</body>
</html>