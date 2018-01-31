<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>클라이언트 및 서버 정보</title></head>
<body>
<!-- p73에 표 3.3 을 보면 더 자세하게 나와있긴함 -->
<!-- request는 jsp에서 기본으로 만든 객체, servlet에선 req라는 변수임, 즉 servlet에서도 쓸수있음 -->
클라이언트IP = <%= request.getRemoteAddr() %> <br>
요청정보길이 = <%= request.getContentLength() %> <br>
요청정보 인코딩 = <%= request.getCharacterEncoding() %> <br>
요청정보 컨텐츠타입 = <%= request.getContentType() %> <br>
요청정보 프로토콜 = <%= request.getProtocol() %> <br>
요청정보 전송방식 = <%= request.getMethod() %> <br>
요청 URI = <%= request.getRequestURI() %> <br>
컨텍스트 경로 = <%= request.getContextPath() %> <br>
서버이름 = <%= request.getServerName() %> <br>
서버포트 = <%= request.getServerPort() %> <br>

</body>
</html>
