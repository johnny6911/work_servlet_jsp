<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import= "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head><title>application 기본 객체 속성 보기</title></head>
<body>
<%
	Enumeration<String> attrEnum = /* application */session.getAttributeNames();
	while (attrEnum.hasMoreElements()) {
		String name = attrEnum.nextElement();
		Object value = application.getAttribute(name);
%>
		application 속성 : <b><%= name %></b> = <%= value %> <br> <!-- 표현식 내의 value 스트링값을 읽어오기위해 tostring을 자동으로 변환해줌 -->
		<!-- out.println(value.toString()); -->
<%
	}
%>
</body>
</html>