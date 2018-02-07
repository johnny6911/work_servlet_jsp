<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head><title>도서 등록 페이지</title></head>
<body>
	<h1>도서 등록 페이지</h1>
	<a href="<c:url value= '/BookServlet?cmd=CMD_LIST' />">도서 목록</a> <!-- 도서 목록 화면으로 이동하는 하이퍼링크 -->
	
	<!-- HTTP method 중 post 방식으로 BookServlet에 정보를 전달 (쿼리문자열을 사용할 수 없음) -->
	<form action="<c:url value='/BookServlet' />" method="post"> <!-- insert에 해당하는 HTT{ Method는 post -->
		<input type="hidden" name="cmd" value="CMD_INSERT">	<!-- cmd라는 변수에다가 value의 CMD_INSERT값을 넣을수있음 -->
		<label>도서명 : <input type="text" name="title"></label><br>
		<label>저자 : <input type="text" name="author"></label><br>
		<label>출판사 : <input type="text" name="publisher"></label><br>
		<label>가격 : <input type="text" name="price"></label><br>
		<label>내용 : </label><textarea rows ="3" cols="50" name="description"></textarea><br>
		<input type="submit" value="도서 등록">
	</form>
</body>
</html>