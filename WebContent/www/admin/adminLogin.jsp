<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String) session.getAttribute("idKey");
%>
<html>
<head>
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
function showMenu() {
	document.adminMenu.target = "right";
	document.adminMenu.action = "admin/adminMenu.jsp";
	document.adminMenu.submit();
}
</script>
</head>

<body>
	<div align="center">
		<div align="center" style="background-color: rgba(255, 255, 255, 0.5);">
			<br /> <b>admin</b>님 환영합니다.
			<p>
				관리자 기능을 사용할 수 있습니다. <br />
			<div style="position: relative; top: 25px; left: 5px;">
				<img src="images/nick.png" border="0"> <br />
				<br />
				<br />
				<br />
			</div>
		</div>
	</div>
</body>
</html>