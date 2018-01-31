package example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.CookieHelper;

public class LoginCheckServlet extends HttpServlet{
	// get은 정보 가져올떄 씀
	// post는 정보 입력할때 씀
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		/*
		 *  CookiHelper의 생성자를 이용해서 클라이언트에 저장되어 있던
		 *  쿠키를 가져와서 CookieHelper 내부에 있는 map에 저장
		 */
		
		CookieHelper cookies = new CookieHelper(req);
		
		if (cookies.exists("AUTH")) { //AUTH 오스란 쿠키가 있는지
			String id = cookies.getValue("AUTH");
			out.println("아이디 '" + id + "'로 로그인 한 상태<br>");
			out.println("<a href='logout.do'>로그아웃</a>");
		}
		else {
			out.println("로그인하지 않은 상태");
		}
	}
	
}
