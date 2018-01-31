
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setAttribute("name", "최범균");
%>
<!DOCTYPE html>
<html>
<head><title>EL Object</title></head>
<body>
<!-- 
		EL(Expression Language) : 표현언어
		${ param.code } 달러 + 내용(예 - param.code)이 표현언어
	 -->
	요청 URI: ${ pageContext.request.requestURI }<br>
	request의 name 속성: ${ requestScope.name }<br>
	code 파라미터: ${ param.code }

</body>
</html>