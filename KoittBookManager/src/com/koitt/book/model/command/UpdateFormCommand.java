package com.koitt.book.model.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koitt.book.dao.BookDao;
import com.koitt.book.vo.Book;

public class UpdateFormCommand implements Command{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp)
			throws ClassNotFoundException, SQLException, NullPointerException ,IllegalArgumentException {
		
		String page = "./book/update-form.jsp";
		
		// 2. 수정할 글의 정보를 불러올 no값을 view.jsp의 수정하기 버튼의 링크를 통해 받아옴
		String _isbn = req.getParameter("isbn");
		
		// 3. no값이 없을경우 예외발생
		if (_isbn == null || _isbn.trim().length() == 0) {
			throw new IllegalArgumentException("게시물 번호가 필요합니다");
		}
		
		// 4. String 타입의 no값을 Integer로 변경
		Integer isbn = Integer.parseInt(_isbn);
		
		// 5. 수정할 글의 정보를 불러오기 위해 BoardDao 객체 생성
		BookDao dao = new BookDao();
		
		// 6. select 메소드를 통해 수정할 글 정보 불러오기
		Book book = dao.select(isbn);
		
		// 7. 불러올 글이 없다면 예외발생
		if (book == null) {
			throw new NullPointerException("없거나 삭제된 게시물 입니다.");
		}
		
		// 8. 수정할 글 정보를 JSP 페이지로 포워딩
		req.setAttribute("book", book);
		
		return page;
	}

}
