<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String) session.getAttribute("idKey");
	String cPath = request.getContextPath();
	String url = "member/member.jsp";
	String label = "ȸ������";
	if (id != null) {
		url = "member/memberUpdate.jsp";
		label = "ȸ������";
	}
%>
<html>
<head>
<title>�޴����</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<br />
	<br />
	<div align="center">
		<%
			if (id != null) {
		%>
		<%
			if (id.equals("admin")) {
		%>
		<jsp:include page="../www/admin/adminMenu.jsp" />
		<%
			}
		%>
		<div align="center"
			style="background-color: rgba(255, 255, 255, 0.5);">
			<br />
			<a href="<%=url%>" target="content" style="border: 5px outset #48BAE4; height: auto; padding: 5px;"><FONT><b>&nbsp;<%=label%>&nbsp;</b></FONT></a>
			&nbsp;&nbsp;&nbsp;
			<a href="board/list.jsp" target="content" style="border: 5px outset #48BAE4; height: auto; padding: 5px;"><FONT><b>&nbsp;&nbsp;�Խ���&nbsp;&nbsp;</b></FONT></a>
			<p><br />
			<a href="member/logout.jsp" style="border: 5px outset #48BAE4; height: auto; padding: 5px;"><FONT><b>&nbsp;�α׾ƿ�&nbsp;</b></FONT></a>
			&nbsp;&nbsp;&nbsp;
			<a href="member/delete.jsp" target="content" style="border: 5px outset #48BAE4; height: auto; padding: 5px;"><FONT><b>&nbsp;Ż���ϱ�&nbsp;</b></FONT></a>
			<div style="position: relative; top: 10px; left: 5px;">
				<img src="images/judy.png" border="0">
			</div>
			<br />
			<br />
		</div>
		<%
			}
		%><%-- else {%>
		<form name="loginFrm" method="post" action="member/loginProc.jsp">
		</form>
		<%} --%>
	</div>
</body>
</html>