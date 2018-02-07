package com.koitt.book.model.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koitt.book.dao.BookDao;

public class DeleteCommand implements Command{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp)
			throws ClassNotFoundException, SQLException,IllegalArgumentException {
		String page = "./book/delete.jsp";
		
		// 2. 클라이언트(delete-confirm.jsp)로부터 Post방식으로 전달받은 no값 받기
		String _isbn = req.getParameter("isbn"); // 삭제(delete)는 포스트 방식을 씀, 딜릭스 컨펌의 no한테 해당 no값을 전해줌
		
		// 3. 입력한 값이 없다면(비어있는 값이면) 예외발생
		if (_isbn == null || _isbn.trim().length() == 0) {
			throw new IllegalArgumentException("게시판 번호가 필요합니다");
		}
		
		// 4. String 타입의 no값을 Integer로 변경
		Integer isbn = Integer.parseInt(_isbn);
		
		// 5. Delete SQL 쿼리문을 실행할 BoardDao 객체 생성
		BookDao dao = new BookDao();
		
		// 6. 전달받은 번호로 Delete SQL문 실행
		dao.delete(isbn);
		
		// 7. BoardServlet(Controller)로 포워딩 할 JSP 페이지 경로 전달
		return page;
	}

}
