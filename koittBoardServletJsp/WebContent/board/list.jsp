<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %> <!-- 페이지의 빈칸 제거 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용 -->
<!DOCTYPE html>
<html><!-- 뷰 -->
<head><title>글 목록</title></head>
<body>
	<h1>글 목록</h1>
	<!--http://localhost:8000/KoittBoardServlet.JSP/ board/insert-form.jsp --> 
	<a href="<c:url value='/board/insert-form.jsp' />">글쓰기</a>
	<br>
	
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
		<!-- 리케스트스코프의 객체를 이용해 등록했던 어레이리스트를 가져옴 -->
			<!-- 서블릿에서 request에 setAttribute 했던 list를 item에 설정 -->
			<c:forEach var="board" items="${ requestScope.list }"> 
				<tr>
					<td>${ board.no }</td>
					<td><a href="BoardServlet?cmd=CMD_VIEW&no=${ board.no } "> <!-- no는 글번호 -->
							${ board.title } <!-- 게시판의 글제목 글자가 찍힘 -->
						</a>
					</td>
					<td>${ board.writer }</td>
					<td>${ board.regdate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>