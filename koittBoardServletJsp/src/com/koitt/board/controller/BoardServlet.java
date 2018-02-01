package com.koitt.board.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doProcess(req, resp);
	}
	
	// 클라이언트가 get, post 요청을 하면 doProcess 메소드를 실행하도록 한다, 겟이 들어오던 포스트가 들어오던 둘다 하게끔 만듬
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) {
		try {
			// 한글 인코딩 처리 (UTF-8 인코딩 설정)
			req.setCharacterEncoding("UTF-8");
			
			// cmd 파라미터 값을 가져온다
			String cmd = req.getParameter("cmd");
			
			// 만약 cmd값이 없다면 기본으로 게시판 목록 화면으로 이동
			if (cmd == null || cmd.trim().length() == 0) { //String cmd의 공백을 없게 해줌
				cmd = "CMD_LIST";
			}
			
			// cmd 값에 따라 분기처리
			String page = null;		// 포워딩할 JSP 페이지 명
			
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}
