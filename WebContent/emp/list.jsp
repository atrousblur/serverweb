<%@page import="java.util.ArrayList, emp.dto.EmpDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%-- 	<%= request.getParameter("column") %>
	<%= request.getParameter("search") %> --%>
	<jsp:include page="/emp/search.jsp">
		<jsp:param value="" name="column" />
		<jsp:param value="" name="search" />
	</jsp:include>

	<%
		ArrayList<EmpDTO> empList = (ArrayList<EmpDTO>) request.getAttribute("empList");
		EmpDTO loginUser = (EmpDTO) request.getAttribute("loginUser");
	%>
	<% if(loginUser == null) {
		response.sendRedirect("/serverweb/emp/login.jsp");
	}else{%>
	<h4><%= loginUser.getName() %>님</h4>
	<html>
	<body>
	<h3 href='/serverweb/emp/list.do'>회원목록보기</hr>
	<table border='1'>
	<tr bgColor='skyblue'><th>ID</th>
	<th>비밀번호</th>
	<th>이름</th>
	<th>주소</th>
	<th>입사일자</th>
	<th>등급</th>
	<th>포인트</th>
	<th>부서번호</th>
	<th>삭제</th>
	</tr>

	<% int size = empList.size();
        for (int i = 0; i < size; i++) { 
        EmpDTO emp = empList.get(i); %>
	<tr>
    <td><a href="/serverweb/emp/read.do?id=<%=emp.getId()%>&action=READ"><%=emp.getId() %></a></td>
    <td><%=emp.getPass() %></td>
    <td><%=emp.getName()%></td>
    <td><%=emp.getAddr()%></td>
    <td><%=emp.getHiredate()%></td>
    <td><%=emp.getGrade()%></td>
    <td><%=emp.getPoint()%></td>
    <td><%=emp.getDetpno()%></td>
    <td><a href='/serverweb/emp/delete.do?id=<%=emp.getId()%>'>삭제</a></td>
    
    </tr>
      <% } %> 		
     	  </table>
		</body>
	</html>
	<%}%>
</body>
</html>

