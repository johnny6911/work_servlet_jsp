<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용 -->
<!DOCTYPE html>
<html>
<head><title>삭제 확인</title></head>
<body>
	<h1>삭제 확인</h1>
	<!-- 쿼리문자열의 no -->
	<h2>${ param.no }삭제하시겠어요? ㅠ</h2>

	<!-- form 태그를 이용하여 서버로 post 전송 -->
	<form action="<c:url value='/BoardServlet' />" method="post">
		<input type="hidden" name="cmd" value="CMD_DELETE">
		<input type="hidden" name="no" value="${ param.no }">
		<input type="submit" value="ㅇㅇ">
	</form>
	<a href="<c:url value='/BoardServlet?cmd=CMD_LIST' />">글 목록으로 이동</a>
</body>
</html>