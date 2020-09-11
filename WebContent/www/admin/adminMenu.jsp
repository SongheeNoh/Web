<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String) session.getAttribute("idKey");
	String cPath = request.getContextPath();
%>
<html>
<head>
<title>관리자 메뉴기능</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
<div align="center">
		<%
			if (id != null) {
		%>
		<div align="center" style="background-color: rgba(255, 255, 255, 0.5);">
			<br />
			<a href="admin/adminMemberList.jsp" target="content" style="border: 5px outset #48BAE4; height: auto; padding: 5px;"><FONT><b>&nbsp;회원목록&nbsp;</b></FONT></a>
			&nbsp;&nbsp;&nbsp;
			<a href="admin/adminMemberDelete.jsp" target="content" style="border: 5px outset #48BAE4; height: auto; padding: 5px;"><FONT><b>&nbsp;회원삭제&nbsp;</b></FONT></a>
			<p><br />
			<a href="board/list.jsp" target="content" style="border: 5px outset #48BAE4; height: auto; padding: 5px;"><FONT><b>&nbsp;&nbsp;게시판&nbsp;&nbsp;</b></FONT></a>
			&nbsp;&nbsp;&nbsp;
			<a href="member/logout.jsp" style="border: 5px outset #48BAE4; height: auto; padding: 5px;"><FONT><b>&nbsp;로그아웃&nbsp;</b></FONT></a>
			<div style="position: relative; top: 15px; left: 5px;">
				<img src="images/judy.png" border="0">
			</div>
			<br />
			<br />
		</div>
		<%
			}
		%>
		<br /><br /><br />
	</div>
</body>
</html>