<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String) session.getAttribute("idKey");
%>
<html>
<head>
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pass.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pass.focus();
			return;
		}
		document.loginFrm.action = "member/loginProc.jsp";
		document.loginFrm.submit();
	}

	function memberForm() {
		document.loginFrm.target = "content"; /*target이 나오면 분할되어 있는 페이지에서 그 네이밍을 찾아가는 것*/
		document.loginFrm.action = "member/member.jsp";
		document.loginFrm.submit();
	}
</script>
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
		<jsp:include page="../admin/adminLeft.jsp" />
		<%
			} else {
		%>
		<div align="center" style="background-color: rgba(255, 255, 255, 0.5);">
			<br /> <b><%=id%></b>님 환영합니다.
			<p>
				제한된 기능을 사용할 수 있습니다. <br />
			<div style="position: relative; top: 20px; left: 5px;">
				<img src="images/nick.png" border="0"> <br />
				<br />
				<br />
			</div>
		</div>
		<%
			}
			}
			else {
		%>
		<form name="loginFrm" method="post" action="member/loginProc.jsp">
			<div align="center"
				style="background-color: rgba(255, 255, 255, 0.5);">
				<table>
					<tr>
						<td align="center" colspan="2"><h4>로그인</h4></td>
						<br />
					</tr>
					<tr>
						<td><br />아 이 디</td>
						<td><input type="text" name="id" value=""></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pass" value=""></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2">
							<div align="center">
								<input type="button" value="로그인" onclick="loginCheck()">&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="button" value="회원가입" onClick="memberForm()">
							</div> <br />
						</td>
					</tr>
				</table>
			</div>
		</form>
		<%
			}
		%>
	</div>
</body>
</html>