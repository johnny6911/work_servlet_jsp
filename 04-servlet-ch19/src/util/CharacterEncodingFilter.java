package util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/*
 * p568
 */
public class CharacterEncodingFilter implements Filter{

	private String encoding;
	
	@Override
	public void init(FilterConfig config) throws ServletException {
		encoding = config.getInitParameter("encoding");
		if(encoding == null) {
			encoding = "utf-8";
		}
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("인코딩 필터 들어감");
		req.setCharacterEncoding(encoding); //들어올때 실행
		chain.doFilter(req, resp); //나갈때 실행
		System.out.println("인코딩 필터 빠져나감");
		
	}
	
	@Override
	public void destroy() {
	}
}
