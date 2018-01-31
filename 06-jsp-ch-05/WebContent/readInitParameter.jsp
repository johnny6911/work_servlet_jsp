<!-- p.123 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import= "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head><title>초기화 파라미터 읽어오기</title></head>
<body>
	초기회 파라미터 목록:
	<%
		Enumeration<String> initParamEnum = application.getInitParameterNames();
		while (initParamEnum.hasMoreElements()){
			String initParamName = initParamEnum.nextElement();	
	%>
			<li><%= initParamName %> = <%= application.getInitParameter(initParamName) %></li>
	<%
		}
	%>
</body>
</html>