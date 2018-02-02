package com.koitt.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.koitt.board.util.DBUtil;
import com.koitt.board.vo.Board;

public class BoardDao {
	public List<Board> selectAll() throws ClassNotFoundException, SQLException{
		// 1. 데이터베이스 커넥션 객체 가져오기
		Connection conn = DBUtil.getInstance().getConnection();
		
		// 2. SQL문 작성 (글 번호, 내림차순 정렬, 최신글 우선)
		String sql = "SELECT * FROM board ORDER BY no DESC"; // 넘버를 내림차순으로 정렬(DESC)
		
		// 3. PrepareStatement 객체 생성
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// 4. SQL문 실행
		ResultSet rs = pstmt.executeQuery();
		
		// 5. ResultSet 객체를 이용하여 게시물 값들을 가져온 뒤 Board 객체에 저장
		List<Board> list = new ArrayList<Board>();
		while (rs.next()) {
			Board board = new Board();
			
			board.setContent(rs.getString("content"));
			board.setNo(rs.getInt("no"));
			board.setRegdate(rs.getDate("regdate"));
			board.setTitle(rs.getString("title"));
			board.setWriter(rs.getString("writer"));
			
			// 글 하나에 해당하는 Board 객체를 리스트에 저장
			list.add(board);
		}
		
		// 6. 객체 해제
		DBUtil.getInstance().close(rs);
		DBUtil.getInstance().close(pstmt);
		DBUtil.getInstance().close(conn);
		
		return list;
	}
	
	// no에 해당되는 글 하나 가져오는 기능
	public Board select(Integer no) throws ClassNotFoundException, SQLException {
		// 1. 데이터베이스 커넥션 객체 가져오기
		Connection conn = DBUtil.getInstance().getConnection(); //디비유틸의 객체를 가져온것
		
		// 2. SQL문 작성 (글 번호, 내림차순 정렬, 최신글 우선)
		String sql = "SELECT * FROM board WHERE no = ?";
		
		// 3. PrepareStatement 객체 생성 및 물음표 채우기
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, no); // 가져온 파라미터값인 no의 값을 채워준다(첫번째 물음표에 1의 값이 들어감)
		
		// 4. SQL문 실행
		ResultSet rs = pstmt.executeQuery();
		
		// 5. ResultSet 객체를 이용하여 게시물 값들을 가져온 뒤 Board 객체에 저장
		/*
		 * 처음에 Cursor가 BOF(Begin Of File)을 가르키고 있기 때문에 next()
		 * 한번 호출해야 우리가 원하는 no에 해당하는 글을 가져올 수 있다
		 */
		rs.next();
		Board board = new Board();
		board.setContent(rs.getString("content"));
		board.setNo(rs.getInt("no"));
		board.setRegdate(rs.getDate("regdate"));
		board.setTitle(rs.getString("title"));
		board.setWriter(rs.getString("writer"));
		
		// 6. 객체 해제
		DBUtil.getInstance().close(rs);
		DBUtil.getInstance().close(pstmt);
		DBUtil.getInstance().close(conn);
		
		// 7. 데이터베이스로부터 가져온 글 정보를 저장한 board 객체 리턴
		return board;
	}
	
	// 글 작성
	public void insert(Board board) throws ClassNotFoundException, SQLException {
		// 1. 데이터베이스 커넥션 객체 가져오기
		Connection conn = DBUtil.getInstance().getConnection();
		
		// 2. SQL문 작성 (글 번호, 내림차순 정렬, 최신글 우선)
		
		StringBuilder sql = new StringBuilder();
		sql.append("INSERT INTO board (title, content, writer, regdate) ");
		sql.append("VALUES (?, ?, ?, CURDATE())");	// CURDATE() - MYSQL에서 제공하는 !함수!
		
		// 3. PrepareStatement 객체 생성 및 물음표 채우기
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, board.getTitle()); //보드 객체에 있는 타이틀을 가져옴
		pstmt.setString(2, board.getContent());	// 위와 마찬가지로 콘텐트를 가져옴
		pstmt.setString(3, board.getWriter()); 
		
		// 4. SQL문 실행
		pstmt.executeUpdate(); // INSERT기 때문에 ResultSet이 나올수 없음, 1이 리턴이됨 한줄이기때문에
		
		// 5. 생략
		
		// 6. 객체 해제
		DBUtil.getInstance().close(pstmt);
		DBUtil.getInstance().close(conn);
		
		// 7. 생략
	}
	
	// 글 삭제
	public void delete(Integer no) throws ClassNotFoundException, SQLException {
		// 1. 데이터베이스 커넥션 객체 가져오기
		Connection conn = DBUtil.getInstance().getConnection();
		
		// 2. SQL문 작성
		String sql="DELETE FROM board WHERE no = ?"; //몇번째 글을 삭제할건지
		
		// 3. PrepareStatement 객체 생성 및 물음표 채우기
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, no); // ?자리에 넘버값
		
		// 4. SQL문 실행
		pstmt.executeUpdate(); // 셀렉트문이 아니므로 익스큐트업데이트로 실행
		
		// 5. 생략
		
		// 6. 객체 해제
		DBUtil.getInstance().close(pstmt);
		DBUtil.getInstance().close(conn);
		
		// 7. 생략(리턴되는게 없으므로)
		
	}
	
	// 글 수정 (파라미터 board 객체에 저장된 no값은 수정하고자하는 글 번호이다)
	public void update(Board board) throws ClassNotFoundException, SQLException {
		// 1. 데이터베이스 커넥션 객체 가져오기
		Connection conn = DBUtil.getInstance().getConnection();
		
		// 2. SQL문 작성
		String sql="UPDATE board SET title = ?, content = ? WHERE no = ?";
		
		// 3. PrepareStatement 객체 생성 및 물음표 채우기
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, board.getTitle());
		pstmt.setString(2, board.getContent());
		pstmt.setInt(3, board.getNo());
		
		// 4. SQL문 실행
		pstmt.executeUpdate();
		
		// 5. 생략
		
		// 6. 객체 해제
		DBUtil.getInstance().close(pstmt);
		DBUtil.getInstance().close(conn);
		
		// 7. 생략(리턴되는게 없으므로)
	}
}
