<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="emp.dto.EmpDTO, emp.service.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("euc-kr");
		String deptno = request.getParameter("deptno");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String addr = request.getParameter("addr");
		int point = Integer.parseInt(request.getParameter("point"));
		String grade = request.getParameter("grade");

		EmpDTO emp = new EmpDTO(id, pass, name, addr, grade, point, deptno);
		EmpService service = new EmpServiceImpl();
		int result = service.insert(emp);

		//response.sendRedirect("/serverweb/basic/insertResult.html");
	%>
	
	<%if(result<0){%>
	<h3>삽입실패</h3>
	<%}else{ %>
	 <h3><%=result %>개 행 삽입성공!!</h3>
	<%} %>

</body>
</html>