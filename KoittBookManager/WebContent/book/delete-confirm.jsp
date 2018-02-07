<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용 -->
<!DOCTYPE html>
<html>
<head><title>삭제 확인 페이지</title></head>
<body>
	<h1>삭제 확인</h1>
	<h1>${ param.isbn } 삭제하시겠습니까?</h1>
	
	<form action="<c:url value='/BookServlet' />" method="post">
		<input type="hidden" name="cmd" value="CMD_DELETE">
		<input type="hidden" name="isbn" value="${ param.isbn }">
		<input type="submit" value="oo">
	</form>
	<a href="<c:url value='/BookServlet?cmd=CMD_LIST' />">메인 목록으로 이동</a>
</body>
</html>