<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> JSP로 분리된 응답화면</h2>
	<%String msg = (String) request.getAttribute("msg");%>
	<h2><%=msg%></h2>

</body>
</html>