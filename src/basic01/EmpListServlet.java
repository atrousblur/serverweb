package basic01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dto.EmpDTO;
import emp.service.EmpService;
import emp.service.EmpServiceImpl;

public class EmpListServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		System.out.println("서블릿 요청 성공");
		// 처리를 위한 기본 작업
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		
		// 1. 비즈니스 메소드 호출
		EmpService service = new EmpServiceImpl();
		ArrayList<EmpDTO> empList= service.getMemberList();
		
		// 2. 클라이언트에 응답할 화면 생성
		out.println("<html>");
		out.println("<body>");
		out.println("<h3 href='/serverweb/emp/list.do'>회원목록보기</hr>");
		out.println("<table border='1'>");
		out.println("<tr bgColor='skyblue'><th>ID</th>");
		out.println("<th>비밀번호</th>");
		out.println("<th>이름</th>");
		out.println("<th>주소</th>");
		out.println("<th>입사일자</th>");
		out.println("<th>등급</th>");
		out.println("<th>포인트</th>");
		out.println("<th>부서번호</th><th>삭제</th></tr>");

        int size = empList.size();
        
        for (int i = 0; i < size; i++) {
    		out.println("<tr>");
    		EmpDTO emp = empList.get(i);
    		out.println("<td>"+emp.getId()+"</td>");
    		out.println("<td>"+emp.getPass()+"</td>");
    		out.println("<td>"+emp.getName()+"</td>");
    		out.println("<td>"+emp.getAddr()+"</td>");
    		out.println("<td>"+emp.getHiredate()+"</td>");
    		out.println("<td>"+emp.getGrade()+"</td>");
    		out.println("<td>"+emp.getPoint()+"</td>");
    		out.println("<td>"+emp.getDetpno()+"</td>");
    		out.println("<td><a href='/serverweb/emp/delete.do?info=test&id="+emp.getId()+"'>삭제</a></td>");
    		out.println("</tr>");
        }		
		
        out.println("</table>");
		out.println("</body>");
		out.println("</html>");
	}
}

