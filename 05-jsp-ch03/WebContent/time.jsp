<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces= "true"%> <!-- 불필요한 공백을 지워준다 -->
<!DOCTYPE html>
<html>
<head><title>현재시간</title></head>
<body>
현재 시각: <%= new java.util.Date() %>
</body>
</html>