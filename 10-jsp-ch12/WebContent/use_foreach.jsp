<!-- p.304 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import= "java.util.Date" %>	<!-- servlet 대신에 JSP에서 표현 -->
<%@ page import= "java.util.TreeMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용을 위해 선언 -->
<%
	// Servlet을 대신해서  JSP에서 표현 
	TreeMap<String, Object> mapData = new TreeMap<String, Object>();
	mapData.put("name", "최범균");
	mapData.put("today", new Date()); //HashMap은 출력순서가 랜덤이다 순서를 정하려면TreeMap으로 바꿔준다
%>
<!-- var에 설정한 변수명에 value에 설정한 값을 넣는다. c에 set이라는 태그는 잘 쓰이진 않음 -->
<c:set var="intArray" value="<%= new int[]{1, 2, 3, 4, 5} %>" />
<c:set var="map" value="<%= mapData %>" /> <!-- 위 자바코드에서 만든 mapData를 map이라는 변수에 저장함 -->

<!DOCTYPE html>
<html>
<head><title>ForEach</title></head>
<body>
	<h4>1부터 100까지 홀수의 합</h4>
	<c:set var="sum" value="0"/> <!-- sum이라는 변수에 0이라는 값을 설정함 -->
	<c:forEach var="i" begin="1" end="100" step="2"> <!-- i변수 지정후 1부터(begin) 시작 end 100까지 가고 2씩증가(step) -->
		<c:set var="sum" value="${ sum + i }"/>
	</c:forEach>
	결과 = ${ sum } <!-- EL 표기법 -->
	
	<h4>구구단: 4단</h4>
	<ul>
		<!-- 변수 i가 1에서 9까지 1씩증가(step에 별다른값을 설정하지 않으면 1) -->
		<c:forEach var="i" begin="1" end="9">
			<li>4 * ${ i } = ${ 4 * i }</li> <!-- 마찬가지로 EL 표기법 이용해서 출력 -->
		</c:forEach>
	</ul>
	
	<h4>int형 배열</h4>
	<!-- intArray[i] 값을 i에 저장해서 사용, 처음 i가 2부터 들어감, int array의 2번째는 3이므로 int array의 3번째, 4번째 값인 4와 5까지 출력된다 -->
	<c:forEach var="i" items="${ intArray }" begin="2" end="4" varStatus="s"> <!-- status는 포문의 상태를 끄집어낸것 변수가 필요하므로 s라고 지정해준것 -->
		${ s.index }-${ s.count }-[${ i }]<br> <!-- EL표기법을 이용해서 몇번째(index)인지 출력해줌, i는 3부터들어감 -->
	</c:forEach>
	
	<h4>Map</h4>
	<c:forEach var= "i" items="${ map }">
		${i.key } = ${ i.value }<br> <!-- 첫번째 key값은 name이되고 i의 value는 최범근이 된다 -->
	</c:forEach>
</body>
</html>