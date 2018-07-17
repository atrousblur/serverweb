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
	<h4><%= loginUser.getName() %>��</h4>
	<html>
	<body>
	<h3 href='/serverweb/emp/list.do'>ȸ����Ϻ���</hr>
	<table border='1'>
	<tr bgColor='skyblue'><th>ID</th>
	<th>��й�ȣ</th>
	<th>�̸�</th>
	<th>�ּ�</th>
	<th>�Ի�����</th>
	<th>���</th>
	<th>����Ʈ</th>
	<th>�μ���ȣ</th>
	<th>����</th>
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
    <td><a href='/serverweb/emp/delete.do?id=<%=emp.getId()%>'>����</a></td>
    
    </tr>
      <% } %> 		
     	  </table>
		</body>
	</html>
	<%}%>
</body>
</html>

