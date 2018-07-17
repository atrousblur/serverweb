package emp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dto.EmpDTO;
import emp.service.EmpService;
import emp.service.EmpServiceImpl;

@WebServlet(name = "emp/read", urlPatterns = { "/emp/read.do" })
public class EmpReadServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. Ŭ���̾�Ʈ�� ��û���� ����
		String id= request.getParameter("id");
		String action = request.getParameter("action");
		String view="";
		if(action.equals("UPDATE")){
			view = "/emp/emp_update.jsp";
		}else if(action.equals("READ")){
			view = "/emp/emp_read.jsp";
		}
		
		// 2. ����Ͻ� �޼ҵ� ȣ��
		EmpService service = new EmpServiceImpl();
		EmpDTO emp = service.read(id);

		// 3. ������ ����
		request.setAttribute("emp", emp);
		
		// 4. ��û������ - forward
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
		
	}

}
