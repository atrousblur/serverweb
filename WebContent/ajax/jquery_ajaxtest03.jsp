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
			$.post("/serverweb/ajax_post.do", {"id" : $("#id").val()}, success_run)	// post����϶��� ��� ����
		})
	})

	function success_run(txt) {
		$("#result").html("<h2>post:" + txt+"</h2>");
	}
</script>
<body>
	<h1>Ajax �׽�Ʈ�ϱ�(JQuery...POST)</h1>
	<form name="myform">
		<input type="text" name="id" id="id" /> <input type="button"
			value="ajax�׽�Ʈ" id="ajaxbtn" />
	</form>
	<div id="result"></div>
</body>
</html>