<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head><title>글 등록 페이지</title></head>
<body>
	<h1>글 등록 페이지</h1>
	<a href="<c:url value= '/BoardServlet?cmd=CMD_LIST' />">글 목록</a> <!-- 글 목록 화면으로 이동하는 하이퍼링크 -->
	
	<!-- HTTP method 중 post 방식으로 BoardServlet에 정보를 전달 (쿼리문자열을 사용할 수 없음) -->
	<form action="<c:url value='/BoardServlet' />" method="post"> <!-- insert에 해당하는 HTT{ Method는 post -->
		<input type="hidden" name="cmd" value="CMD_INSERT">	<!-- cmd라는 변수에다가 value의 CMD_INSERT값을 넣을수있음 -->
		<label>제목 : <input type="text" name="title"></label><br>
		<label>작성자 : <input type="text" name="writer"></label><br>
		<label>내용 : </label><textarea rows ="3" cols="50" name="content"></textarea><br>
		<input type="submit" value="글 등록">
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