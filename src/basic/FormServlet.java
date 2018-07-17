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
		out.println("<h1>클라이언트에서 입력한 값</h1>");
		
		out.println("<ul>");
		if(name==""){
		out.println("<li>이름: <이름을 입력하세요></li>");
		}else{
		out.println("<li>이름: "+name+"</li>");
		}
		
		if(addr==""){
		out.println("<li>주소: <주소를 입력하세요></li>");
		}else{
		out.println("<li>이름: "+addr+"</li>");
		}
		
		out.println("<li>사용중인 소프트웨어: </li>");
		if (language == null) {
			out.println("사용 가능한 language가 없습니다.");
		} else {
			for (int i = 0; i < language.length; i++) {
				out.println(language[i] + "<br/>");
			}
		}
		
		if(save==null){
		out.println("<li>입력 정보 저장유무를 선택하세요. </li>");
		}else{
		out.println("<li>입력 정보 저장유무: "+save+"</li>");
		}
			
		out.println("</ul>");
		
		out.println("</body>");
		out.println("</html>");
	}
}
