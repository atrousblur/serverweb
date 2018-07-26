package ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ajaxgugu_post", urlPatterns = { "/ajaxgugu_post.do" })
public class AjaxGuGuServlet_POST extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=euc-kr");
		response.setHeader("cahce-control", "no-cache,no-store");
		PrintWriter pw = response.getWriter();
		
		int num = Integer.parseInt(request.getParameter("num"));
		String msg = "";

		if (num > 9 | num < 2) {
			msg = "숫자를 다시 입력하세요.";

		} else {
			for (int i = 1; i <= 9; i++) {
				msg = msg + num + "*" + i + "=" + (num * i) +"<br/>";
			}
		}
		pw.println(msg);

	}

}
