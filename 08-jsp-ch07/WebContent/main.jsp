<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces= "true" %>
<!DOCTYPE html>
<html>
<head><title>main</title></head>
<body>

main.jsp에서 생성한 내용

<jsp:include page= "sub.jsp" flush="false"/> <!-- 해당 옵션을 따로 주지 않으면 기본값은 false임 -->

include 이후의 내용 <!-- false이면 버퍼에다 전부 집어넣고 마지막에 flush 한꺼번에 하는것 -->
				<!-- true이면 flush(<jsp:include page= "sub.jsp" flush="false"/>)라인만 버퍼에 집어넣고 출력 그다음 나머지 출력 -->
</body>
</html>