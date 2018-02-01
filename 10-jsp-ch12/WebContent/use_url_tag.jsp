<!-- p.309 -->
<%@ page contentType="text/html; charset=UTF-8" session="false"%> <!-- 세션 펄스는 현재 사용을 하지 않겠다는것, 딱히 현재로썬 의미가 없음 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
	<!-- http://search.daum.net/search?w=blog&q=공원 <--을 입력한것과 똑같음 url 태그 활용방법임-->
	<c:url value="http://search.daum.net/search" var="searchUrl">
		<c:param name="W" value="blog" />
		<c:param name="q" value="공원" />
	</c:url>
	
	<ul>
		<li>${ searchUrl }</li>
		<li><c:url value="/use_if_tag.jsp" /></li>
		<li><c:url value="./use_if_tag.jsp" /></li>
	</ul>
</body>
</html>