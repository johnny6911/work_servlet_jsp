<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %> <!-- 페이지의 빈칸 제거 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용 -->
<!DOCTYPE html>
<html>
<head><title>도서mgr 목록</title></head>
<body>
	<h1>도서 목록</h1>
	<a href="<c:url value='/book/insert-form.jsp' />">도서 입력</a>
	<br>
	
	<table>
		<thead>
			<tr>
				<th>도서번호</th>
				<th>제목</th>
				<th>저자</th>
				<th>출판사</th>
				<th>가격</th>
				<th>책 설명</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="${ requestScope.list }">
				<tr>
					<td>${ book.isbn }</td>
					<td><a href="BookServlet?cmd=CMD_VIEW&isbn=${ book.isbn } ">
							${ book.title }
						</a>
					</td>
					<td>${ book.author }</td>
					<td>${ book.publisher }</td>
					<td>${ book.price }</td>
					<td>${ book.description }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>