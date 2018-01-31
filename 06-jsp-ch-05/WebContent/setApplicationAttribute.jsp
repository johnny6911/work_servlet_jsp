<!-- p.135~ p.136 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// application에 어트리뷰트를 설정하는 예제(불러오는건 구현 안되있음)
	// 쿼리 문자열을 이용하여 name과 value 값을 저장 (?name=홍길동&value=30)
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if ( name != null && value != null){
		//application 영역 내에서 사용할 수 있는 key와 값을 저장
		/* application */session.setAttribute(name, value); //session은 동일 브라우저 내에서만
															//application은 전체 브라우저에서 가능
	}
%>
<!DOCTYPE html>
<html>
<head><title>application 속성 지정</title></head>
<body>
	<%
		if (name != null && value != null){
	%>
			application 기본 객체의 속성 설정:
			<%= name %> = <%= value %>
	<%
		} else {
	%>
			application 기본 객체의 속성 설정 안함
	<%
		}
	%>
</body>
</html>