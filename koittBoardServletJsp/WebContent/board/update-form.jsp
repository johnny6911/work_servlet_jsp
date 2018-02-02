<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head><title>글 수정 페이지</title></head>
<body><!-- 수정하기 페이지 작성할때는 글 등록페이지 그대로 복사 (일부 수정 보내는방식(get)(post)) -->
	<h1>글 수정 페이지</h1>
	<a href="<c:url value= '/BoardServlet?cmd=CMD_LIST' />">글 목록</a> <!-- 글 목록 화면으로 이동하는 하이퍼링크 -->
	
	<!-- HTTP method 중 post 방식으로 BoardServlet에 정보를 전달 (쿼리문자열을 사용할 수 없음) -->
	<form action="<c:url value='/BoardServlet' />" method="post"> <!-- insert에 해당하는 HTT{ Method는 post -->
		<input type="hidden" name="cmd" value="CMD_UPDATE">	<!-- cmd라는 변수에다가 value의 CMD_UPDATE값을 넣을수있음 -->
		<input type="hidden" name="no" value="${ requestScope.board.no }">
		<div>번호 : ${ requestScope.board.no }</div>
		<label>제목 : <input type="text" name="title" value="${ requestScope.board.title }">
		</label><br> <!-- 비어있는곳에다가 타이틀 값을 넣어줌 -->
		<div>작성자 : ${ requestScope.board.writer }</div>
		<br><label>내용 : </label>
		<textarea rows ="3" cols="50" name="content">${ requestScope.board.content }</textarea>
		<br><!-- 서버에 전송되는 값은 cmd, no, title, content -->
		<input type="submit" value="글 수정">
	</form>
	
	<!-- 
		SQL	   HTTP Method
		Selset GET
		INSERT post
		UPDATE PUT 		html에서는 POST로 구현 -> javascript ajax를 사용
		DELETE DELETE	hrml에서는 POST을 구현 -> javascript ajax에서 DELETE 사용
	 -->
</body>
</html>