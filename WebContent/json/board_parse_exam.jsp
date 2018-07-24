<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div id="dept_parser"></div>
	<script type="text/javascript">
		var board = '{"board":'
				+ '[{"no":"1", "title":"json 연습","date":"2018/01/01","content":"json어렵다","writer":"kim","category":["it","math"],'
				+'"reply":[{"reno":"1","content":"어렵다ㅠㅠ","date":"2018/05/01","writer":"kim123"},'
				+'{"reno":"2","content":"하다보니조금..","date":"2018/05/10","writer":"kim7777"}'
				+']}'
				+']}';
				
		// JSON파서의 parse 이용
		var obj1 = JSON.parse(board);
		mydata1 = "no:" + obj1.board[0].no + ", title:" + obj1.board[0].title + ", date: " + obj1.board[0].date
		+ ", content:" + obj1.board[0].content + ", writer:" + obj1.board[0].writer + ", category:" + obj1.board[0].category[0] + "," + obj1.board[0].category[1]
		+ "<br/> reply- reno: " + obj1.board[0].reply[0].reno + ", reply- content: " + obj1.board[0].reply[0].content
		+ ", reply- date: " + obj1.board[0].reply[0].date + ", reply- writer: " + obj1.board[0].reply[0].writer;
		document.getElementById("dept_parser").innerHTML = mydata1;	
	</script>
</body>
</html>