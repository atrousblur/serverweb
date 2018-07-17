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
		
		// Ŭ���̾�Ʈ�� �Է��� ��û ������ ����ϱ�
		String name = req.getParameter("name");
		String addr = req.getParameter("addr");
		String [] sw = req.getParameterValues("sw");

		// Ŭ���̾�Ʈ�� ������ ȭ���� ����
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>��°��</h1>");
		out.println("<h3>�̸�: "+name+"</h3>");
		out.println("<h3>�ּ�: "+addr+"</h3>");
		out.println("<h3>������� ����Ʈ����: </h3>");
		
		for (int i = 0; i < sw.length; i++) {
			out.println(sw[i] + "<br/>");
		}
		out.println("</body>");
		out.println("</html>");
	}
}
