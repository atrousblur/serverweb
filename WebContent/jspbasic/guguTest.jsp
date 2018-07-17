<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border='1'>
		<%for (int i = 2; i <= 9; i++) {%>
		<tr>
			<%for (int j = 1; j <= 9; j++) {
				if (i == j) {%>
			<td bgColor="yellow"><%=i+"*"+j+ "=" +(i* j)%></td>
			<%} else {%>
			<td><%=i+"*"+j+"="+(i * j)%></td>
			<%}%>
			<%}%>
		</tr>
		<%}%>
		</table>
	</body>
</html>