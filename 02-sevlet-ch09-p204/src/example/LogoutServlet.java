package example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.CookieHelper;

/*
 * p. 231
 */
public class LogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		//쿠키 삭제 -> 로그아웃 AUTH의 값을 빈값(0)으로 설정하였기에 삭제한다는것
		resp.addCookie(CookieHelper.createCookie("AUTH", "", "/", 0));
		
		PrintWriter out = resp.getWriter();
		out.println("로그아웃하였습니다");
		
		out.flush();
		out.close();
	}
}
