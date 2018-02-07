<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용 -->
<!DOCTYPE html>
<html>
<head><title>도서 상세 페이지</title></head>
<body>
	<table>
		<tbody>
			<tr>
				<th>도서 번호</th>
				<td>${ requestScope.book.isbn }</td>
			</tr>
			<tr>
				<th>도서 제목</th>
				<td>${ requestScope.book.title }</td>
			</tr>
			<tr>
				<th>저자</th>
				<td>${ requestScope.book.author }</td>
			</tr>
			<tr>
				<th>출판사</th>
				<td>${ requestScope.book.publisher }</td>
			</tr>
			<tr>
				<th>가격</th>
				<td>${ requestScope.book.price }</td>
			</tr>
			<tr>
				<th>책 내용</th>
				<td>${ requestScope.book.description }</td>
			</tr>
		</tbody>
	</table>
	<a href="<c:url value='/book/delete-confirm.jsp?isbn=${ requestScope.book.isbn }' />"> <!-- 서블릿에다 바로 요청하는것이 아님 넘버값을 delete-confirm에 전해줌-->
		삭제하기
	</a>
	<a href="<c:url value='/BookServlet?cmd=CMD_UPDATE_FORM&isbn=${ requestScope.book.isbn }'/>">
		수정하기
	</a>
</body>
</html>