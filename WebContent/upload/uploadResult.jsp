<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>업로드한 파일</h1>
	<hr/>
	<%
	String image1 = (String)request.getAttribute("image1"); //원래대로면 dto에서 꺼내와야함
	String image2 = (String)request.getAttribute("image2");
	%>
	<img src="/serverweb/log/<%= image1 %>"/>
</body>
</html>