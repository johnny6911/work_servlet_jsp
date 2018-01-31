package example;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ModifyCookieServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		// 클라이언트에 저장된 쿠키배열을 가져온다
		Cookie[] cookies = req.getCookies();
		
		// 쿠키 존재하는지 체크
		if (cookies != null && cookies.length > 0) {
			// for문을 이용해 찾는 key가 있는지 찾고 새로 쿠키를 입력한다
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("name")) { // 해당 포문은 키값에 name이 있는지 찾는것
					Cookie cookie = 
							new Cookie("name", URLEncoder.encode("JSP 프로그래밍", "utf-8")); // name이 있으면 새로 객체를 만듬
					resp.addCookie(cookie);
					break;
				}
			}
		}
		
		PrintWriter out = resp.getWriter();
		out.println("<h1>name 쿠키의 값을 변경합니다 </h>");
		
		out.flush();
		out.close();
	}
}
