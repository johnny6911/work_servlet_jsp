package com.koitt.book.model.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koitt.book.dao.BookDao;
import com.koitt.book.vo.Book;

public class UpdateCommand implements Command{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp)
			throws ClassNotFoundException, SQLException, IllegalArgumentException {
		
		String page = "./book/update-ok.jsp";
		
		String _isbn = req.getParameter("isbn");
		String description = req.getParameter("description");
		
		if (_isbn == null || _isbn.trim().length() == 0){
			throw new IllegalArgumentException("게시물 번호가 필요합니다");
		}
		
		// 4. String 타입의 no값을 Integer 타입으로 변경
		Integer isbn = Integer.parseInt(_isbn);
		
		// 5. 수정할 글 번호와 제목, 내용을 담는 Board 객체 생성
		Book book = new Book();
		
		// 6. 수정할 글 번호와 제목, 내용을 객체에 담기
		book.setIsbn(isbn);
		book.setDescription(description);
		
		// 7. 수정하기 위해 dao 객체 생성
		BookDao dao = new BookDao();
		
		// 8. 생성한 dao 객체를 이용하여 update SQL문 실행
		dao.update(book);
		
		return page;
	}

}
