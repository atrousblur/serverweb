package basic01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dto.EmpDTO;
import emp.service.EmpService;
import emp.service.EmpServiceImpl;

public class EmpInsertServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		// ó���� ���� �⺻ �۾�
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		
		// 1. Ŭ���̾�Ʈ�� ��û���� ����
		String deptno= req.getParameter("deptno");
		String name= req.getParameter("name");
		String id= req.getParameter("id");
		String pass= req.getParameter("pass");
		String addr= req.getParameter("addr");
		int point = Integer.parseInt(req.getParameter("point"));
		String grade= req.getParameter("grade");

		// 2. ����Ͻ� �޼ҵ� ȣ��
		EmpDTO emp = new EmpDTO(id,pass,name,addr,grade,point,deptno);
		EmpService service = new EmpServiceImpl();
		int result = service.insert(emp);
		
		
		// 3. Ŭ���̾�Ʈ�� ������ ȭ�� ����
		String msg="";
		if(result>=1){
			msg = result+"�� �� ���� ����";
		}else{
			msg = "���Խ���";
		}
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>"+msg+"</h1>");
		out.println("<h3><a href='/serverweb/emp/list.do'>ȸ����Ϻ���</a></hr>");
		out.println("</body>");
		out.println("</html>");
	}
}
