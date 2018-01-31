<!-- p.60 -->
<!--  디렉티브(Directive): JSP 페이지에 대한 설정 정보를 지정할 때 사용 -->
<%@ page contentType="java" contentType="text/html; charset=UTF-8"%> <!-- page directive -->
<%@ page import="java.util.Calendar"%>							<!-- page directive -->
<!DOCTYPE html>
<html>
<head><title>Calendar 클래스 사용</title></head>
<body>

<!-- 스크립트릿 (scriptLet): 자바코드를 작성하는 부분 -->
<%
	Calendar cal = Calendar.getInstance();
%>
오늘은
	<!-- 표현식(expression) -->
	<%= cal.get(Calendar.YEAR) %>년		<!-- <%out.println(cal.get(Calendar.YEAR)); %>와 같음 -->
	<%= cal.get(Calendar.MONTH) +1%>월
	<%= cal.get(Calendar.DATE) %>일
입니다
</body>
</html>