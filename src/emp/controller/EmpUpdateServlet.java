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
@WebServlet(name = "emp/update", urlPatterns = { "/emp/update.do" })
public class EmpUpdateServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");
		
		// 1. Ŭ���̾�Ʈ�� ��û���� ����
		String id= request.getParameter("id");
		String addr= request.getParameter("addr");
		int point = Integer.parseInt(request.getParameter("point"));
		String grade= request.getParameter("grade");

		// 2. ����Ͻ� �޼ҵ� ȣ��
		EmpDTO emp = new EmpDTO(id,addr,grade,point);
		
		System.out.println(emp);
		
		EmpService service = new EmpServiceImpl();
		int result = service.update(emp);
		
		// 3. ��û������ 
		String view = "";
		if(result>=1){
			view = "/serverweb/emp/list.do";
		}else{
			view = "/serverweb/emp/read.do?id="+id+"&action=UPDATE";
		}
		
		response.sendRedirect(view);
	
	}

}
