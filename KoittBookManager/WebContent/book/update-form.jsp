<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head><title>도서 내용 수정 페이지</title></head>
<body><!-- 수정하기 페이지 작성할때는 글 등록페이지 그대로 복사 (일부 수정 보내는방식(get)(post)) -->
	<h1>도서내용 수정 </h1>
	<a href="<c:url value= '/BookServlet?cmd=CMD_LIST' />">도서 목록</a> <!-- 글 목록 화면으로 이동하는 하이퍼링크 -->
	
	<!-- HTTP method 중 post 방식으로 BoardServlet에 정보를 전달 (쿼리문자열을 사용할 수 없음) -->
	<form action="<c:url value='/BookServlet' />" method="post"> <!-- insert에 해당하는 HTT{ Method는 post -->
		<input type="hidden" name="cmd" value="CMD_UPDATE">	<!-- cmd라는 변수에다가 value의 CMD_UPDATE값을 넣을수있음 -->
		<input type="hidden" name="isbn" value="${ requestScope.book.isbn }">
		<div>번호 : ${ requestScope.book.isbn }</div>
		<br>
		<div>작성자 : ${ requestScope.book.description }</div>
		<br><label>내용 : </label>
		<textarea rows ="3" cols="50" name="description">${ requestScope.book.description }</textarea>
		<br>
		<input type="submit" value="도서 정보 수정">
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