<%@page import="www.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="mMgr" class="www.MemberMgr" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function deleteCheck() {
		if (!document.admindelForm.pw.value) {
			alert("비밀번호를 입력하지 않으셨습니다.");
			return false;
		}
	}
</script>
</head>

<body background="../images/delete.png">
	<form name="admindelForm" action="adminMemberDeleteProc.jsp"
		method="post" onSubmit="return deleteCheck()">
		<br /> <br /> <br />
		<table align="center" border="0" cellspacing="0" cellpadding="5"
			style="background-color: rgba(255, 255, 255, 0.5);">
			<tr>
				<td align="center" valign="middle">
					<table border="0" cellspacing="0" cellpadding="2" align="center"
						width="600">
						<tr align="center"
							style="background-color: rgba(252, 243, 140, 0.6);">
							<td><h1>회 원 삭 제</h1></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr align="center">
							<td><h2>관리자 비밀번호를 다시 한 번 입력하세요.</h2></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr align="center">
							<td>비밀번호 <input type="password" name="adminpw"
								style="background-color: transparent;" />
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr align="center">
							<td><h2>삭제하고 싶은 회원의 ID를 입력하세요.</h2></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr align="center">
							<td>회원ID <input type="text" name="deleteMemberID"
								style="background-color: transparent;" />
							</td>
						</tr>

						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr align="center">
							<div align="center">
								<td><input type="submit" value="삭제" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="button" value="취소"
									onclick="top.document.location.reload();" /></td>
							</div>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>