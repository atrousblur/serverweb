package basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalcServlet  extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		// 처리를 위한 기본 작업
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		
		// 1. 클라이언트가 입력한 요청 정보를 추출
		int num1 = Integer.parseInt(req.getParameter("num1"));
		int num2 = Integer.parseInt(req.getParameter("num2"));
		String opr = req.getParameter("method");

		// 2. 비즈니스 로직 호출
		Calc logic = new Calc();
		int result = logic.calc(num1, num2, opr);
		
		// 3. 클라이언트에 응답할 화면을 생성
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>출력결과</h1>");
		out.println("<h3>num1의 "+num1+"과 num2의 "+num2+"을 연산한 결과는 "+result+"입니다.</h3>");

		out.println("</body>");
		out.println("</html>");
	}
}
