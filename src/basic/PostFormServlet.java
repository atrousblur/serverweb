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
		
		// Ŭ���̾�Ʈ�� �Է��� ��û ������ ����ϱ�
		String userId = req.getParameter("userId");
		String userName = req.getParameter("userName");
		String passwd = req.getParameter("passwd");
		String gender = req.getParameter("gender");
		String job = req.getParameter("job");
		String [] item = req.getParameterValues("item");

		// Ŭ���̾�Ʈ�� ������ ȭ���� ����
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>customer</h1>");
		out.println("<h3>���̵�: "+userId+"</h3>");
		out.println("<h3>����: "+userName+"</h3>");
		out.println("<h3>��й�ȣ: "+passwd+"</h3>");
		out.println("<h3>����: "+gender+"</h3>");
		out.println("<h3>����: "+job+"</h3>");
		out.println("<h3>Favorites: ");
		
		for (int i = 0; i < item.length; i++) {
			out.println(item[i] + " ");
		}
		out.println("</h3> ");
		out.println("</body>");
		out.println("</html>");
	}
}
