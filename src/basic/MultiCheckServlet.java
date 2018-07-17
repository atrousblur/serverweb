package basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MultiCheckServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		
		// 클라이언트가 입력한 요청 정보를 출력하기
		String name = req.getParameter("name");
		String addr = req.getParameter("addr");
		String [] sw = req.getParameterValues("sw");

		// 클라이언트에 응답할 화면을 생성
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>출력결과</h1>");
		out.println("<h3>이름: "+name+"</h3>");
		out.println("<h3>주소: "+addr+"</h3>");
		out.println("<h3>사용중인 소프트웨어: </h3>");
		
		for (int i = 0; i < sw.length; i++) {
			out.println(sw[i] + "<br/>");
		}
		out.println("</body>");
		out.println("</html>");
	}
}
