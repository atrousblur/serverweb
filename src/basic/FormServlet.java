package basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		
		String name = req.getParameter("name");
		String addr = req.getParameter("addr");
		String [] language = req.getParameterValues("language");
		String save = req.getParameter("save");
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Ŭ���̾�Ʈ���� �Է��� ��</h1>");
		
		out.println("<ul>");
		if(name==""){
		out.println("<li>�̸�: <�̸��� �Է��ϼ���></li>");
		}else{
		out.println("<li>�̸�: "+name+"</li>");
		}
		
		if(addr==""){
		out.println("<li>�ּ�: <�ּҸ� �Է��ϼ���></li>");
		}else{
		out.println("<li>�̸�: "+addr+"</li>");
		}
		
		out.println("<li>������� ����Ʈ����: </li>");
		if (language == null) {
			out.println("��� ������ language�� �����ϴ�.");
		} else {
			for (int i = 0; i < language.length; i++) {
				out.println(language[i] + "<br/>");
			}
		}
		
		if(save==null){
		out.println("<li>�Է� ���� ���������� �����ϼ���. </li>");
		}else{
		out.println("<li>�Է� ���� ��������: "+save+"</li>");
		}
			
		out.println("</ul>");
		
		out.println("</body>");
		out.println("</html>");
	}
}
