<!-- p76 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>폼 생성</title></head>
<body>
	<!-- request.getContextPath()의 리턴값: /05-jsp-ch03 -->
	 <!-- 폼 액션은 해당 주소(URL)를 포스트방식으로 전송할거란것
	 		method: HTTP Method 명 (insert 할 경우에는 post 방식을 사용한다)	
	  -->
	<form action="<%= request.getContextPath() %>/viewPerameter.jsp"method="post">
		이름: <input type="text" name="name" size="10"> <br>
		주소: <input type="text" name="address" size="30"> <br>
		좋아하는 동물:
			<input type= "checkbox" name="pet" value="dog"> 강아지 <!-- 펫이라는 배열에 dog나 cat이 저장되서 전송이됨 -->
			<input type= "checkbox" name="pet" value="cat"> 고양이
			<input type= "checkbox" name="pet" value="pig">	돼지
		<br>
		<input type= "submit" value="전송">
	</form>
</body>
</html>