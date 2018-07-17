package basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalcServlet  extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		// ó���� ���� �⺻ �۾�
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		
		// 1. Ŭ���̾�Ʈ�� �Է��� ��û ������ ����
		int num1 = Integer.parseInt(req.getParameter("num1"));
		int num2 = Integer.parseInt(req.getParameter("num2"));
		String opr = req.getParameter("method");

		// 2. ����Ͻ� ���� ȣ��
		Calc logic = new Calc();
		int result = logic.calc(num1, num2, opr);
		
		// 3. Ŭ���̾�Ʈ�� ������ ȭ���� ����
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>��°��</h1>");
		out.println("<h3>num1�� "+num1+"�� num2�� "+num2+"�� ������ ����� "+result+"�Դϴ�.</h3>");

		out.println("</body>");
		out.println("</html>");
	}
}
