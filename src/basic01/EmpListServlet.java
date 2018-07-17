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
		
		System.out.println("���� ��û ����");
		// ó���� ���� �⺻ �۾�
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		
		// 1. ����Ͻ� �޼ҵ� ȣ��
		EmpService service = new EmpServiceImpl();
		ArrayList<EmpDTO> empList= service.getMemberList();
		
		// 2. Ŭ���̾�Ʈ�� ������ ȭ�� ����
		out.println("<html>");
		out.println("<body>");
		out.println("<h3 href='/serverweb/emp/list.do'>ȸ����Ϻ���</hr>");
		out.println("<table border='1'>");
		out.println("<tr bgColor='skyblue'><th>ID</th>");
		out.println("<th>��й�ȣ</th>");
		out.println("<th>�̸�</th>");
		out.println("<th>�ּ�</th>");
		out.println("<th>�Ի�����</th>");
		out.println("<th>���</th>");
		out.println("<th>����Ʈ</th>");
		out.println("<th>�μ���ȣ</th><th>����</th></tr>");

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
    		out.println("<td><a href='/serverweb/emp/delete.do?info=test&id="+emp.getId()+"'>����</a></td>");
    		out.println("</tr>");
        }		
		
        out.println("</table>");
		out.println("</body>");
		out.println("</html>");
	}
}

