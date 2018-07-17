package basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PostFormServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		
		// 클라이언트가 입력한 요청 정보를 출력하기
		String userId = req.getParameter("userId");
		String userName = req.getParameter("userName");
		String passwd = req.getParameter("passwd");
		String gender = req.getParameter("gender");
		String job = req.getParameter("job");
		String [] item = req.getParameterValues("item");

		// 클라이언트에 응답할 화면을 생성
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>customer</h1>");
		out.println("<h3>아이디: "+userId+"</h3>");
		out.println("<h3>성명: "+userName+"</h3>");
		out.println("<h3>비밀번호: "+passwd+"</h3>");
		out.println("<h3>성별: "+gender+"</h3>");
		out.println("<h3>직업: "+job+"</h3>");
		out.println("<h3>Favorites: ");
		
		for (int i = 0; i < item.length; i++) {
			out.println(item[i] + " ");
		}
		out.println("</h3> ");
		out.println("</body>");
		out.println("</html>");
	}
}
