<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String) session.getAttribute("idKey");
%>
<html>
<head>
<title>�α���</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("���̵� �Է��� �ּ���.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pass.value == "") {
			alert("��й�ȣ�� �Է��� �ּ���.");
			document.loginFrm.pass.focus();
			return;
		}
		document.loginFrm.action = "member/loginProc.jsp";
		document.loginFrm.submit();
	}

	function memberForm() {
		document.loginFrm.target = "content"; /*target�� ������ ���ҵǾ� �ִ� ���������� �� ���̹��� ã�ư��� ��*/
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
			<br /> <b><%=id%></b>�� ȯ���մϴ�.
			<p>
				���ѵ� ����� ����� �� �ֽ��ϴ�. <br />
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
						<td align="center" colspan="2"><h4>�α���</h4></td>
						<br />
					</tr>
					<tr>
						<td><br />�� �� ��</td>
						<td><input type="text" name="id" value=""></td>
					</tr>
					<tr>
						<td>��й�ȣ</td>
						<td><input type="password" name="pass" value=""></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2">
							<div align="center">
								<input type="button" value="�α���" onclick="loginCheck()">&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="button" value="ȸ������" onClick="memberForm()">
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