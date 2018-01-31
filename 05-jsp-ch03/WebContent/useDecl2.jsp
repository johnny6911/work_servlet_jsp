<!-- p71 -->
<%@ page contentType="text/html; charset=UTF-8"%>

<!--  선언부 (declaration): 자바 메소드를 만드는 영역 -->
<%!
	public int add(int a, int b){
		int c = a + b;
		return c;
	}

	public int substract(int a, int b){
		int c = a - b;
		return c;
	}
%>
<!DOCTYPE html>
<html>
<head><title>스크립트릿에서 선언부 사용하기</title></head>
<body>
<%
	int value1 = 3;
	int value2 = 9;
	
	int addResult = add(value1, value2);
	int substractResult = substract(value1, value2);
%>
<%= value1 %> + <%= value2 %> = <%= addResult %> <!-- 여기서 +와 -, =는 그냥 보여지기위한 문자임 -->
<br>
<%= value1 %> - <%= value2 %> = <%= substractResult %>
</body>
</html>