package com.koitt.book.model.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koitt.book.dao.BookDao;
import com.koitt.book.vo.Book;

public class InsertCommand implements Command {
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp)
			throws ClassNotFoundException, SQLException {
		// 1. 포워딩할 JSP 페이지명
		String page = "./book/insert-success.jsp";
		
		// 2. 클라이언트로부터 전달받은 값을 변수에 저장
		String title = req.getParameter("title");
		String author = req.getParameter("author");
		String publisher = req.getParameter("publisher");
		Integer price = Integer.parseInt(req.getParameter("price"));
		String description = req.getParameter("description");
		
		
		
		// 3. insert로 전달할 Board 객체 생성
		Book book = new Book(); // 중간에 값을 옮기는 역할을 하는 객체(데이터 트랜스퍼 오브젝트 DTO)
		
		// 4. 2번에서 저장한 변수를 board 객체에 저장
		book.setTitle(title); // 셉터를 이용하여 정보저장
		book.setAuthor(author);
		book.setPublisher(publisher);
		book.setPrice(price);
		book.setDescription(description);
		
		// 5. 4번에서 만든 객체를 Dao로 전달하기 위해 BoardDao 객체 생성
		BookDao dao = new BookDao();
		
		
		dao.insert(book); //객체만 저장하면 인설트 메소드에서 디비저장
		
		// 7. 포워딩 할 JSP 페이지를 BoardServlet(Controller)로 전달
		return page;
	}
}
