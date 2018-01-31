<!-- p.164 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String type = request.getParameter("type"); // type엔 A값이 저장이 됨
	if (type == null){ // type은 null값이 현재 아니기에 넘어감
		return;
	}
%>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>타입</td>
		<td><b><%= type %></b></td>
	</tr>
	<tr>
		<td>특징</td>
		<td>
			<% if (type.equals("A")) { %>
					강한 내구성
			<% } else if (type.equals("B")) {%>
					뛰어난 대처 능력
			<% } %>
		</td>
	</tr>
</table>

