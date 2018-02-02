<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용 -->
<!DOCTYPE html>
<html>
<head>
<title>글 상세보기</title>
</head>
<body>
	<table> <!-- 포워딩 받아서 결과를 뿌려줌 -->
		<tbody><!-- 테이블에서 가운데 정보들어가는 부분 -->
			<tr>
				<th>번호</th> <!-- 테이블의 헤더 보통 타이틀에다가 달음 -->
				<!-- board라는 key값에 .을 찍고 no에 접근할수가 있음 -->
				<td>${ requestScope.board.no }</td> <!-- 테이블 데이터, EL 표기법 requestScope는 EL에서 사용가능한 객체 -->
			</tr>
			<tr>
				<th>제목</th>
				<td>${ requestScope.board.title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${ requestScope.board.content }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${ requestScope.board.writer }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${ requestScope.board.regdate }</td>
			</tr>
		</tbody>
	</table>
														<!-- 삭제하고자 하는 글 번호 -->
	<a href="<c:url value='/board/delete-confirm.jsp?no=${ requestScope.board.no }' />"> <!-- 서블릿에다 바로 요청하는것이 아님 넘버값을 delete-confirm에 전해줌-->
		삭제하기
	</a>
	<a href="<c:url value='/BoardServlet?cmd=CMD_UPDATE_FORM&no=${ requestScope.board.no }'/>">
		수정하기
	</a>
</body>
</html>