<%@page import="www.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="mMgr" class="www.MemberMgr" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 회원관리</title>
<script src="../js/script.js?ver=0.2"></script>
</head>

<body background="../images/list.png">
	<h2 align="center"><Font color="#2b483b">** 전체 회원 목록 ** </Font></h2>
	<table align="center" width="90%" border="0" cellspacing="0" cellpadding="5" style="background-color: rgba(255, 255, 255, 0.6);">
		<tr align="center" style="background-color: rgba(252, 243, 140, 0.6);">
			<th>아이디</th><th>비밀번호</th><th>회원명</th><th>성별</th><th>생일</th><th>이메일</th>
			<th>우편번호</th><th>주소</th><th>취미</th><th>직업</th>
		</tr>
	<%
		ArrayList<MemberBean> list = mMgr.showAllMember();
		for(MemberBean bean : list){
	%>
			<tr>
				<td><%=bean.getId() %></td>
				<td><%=bean.getPass() %></td>
				<td><%=bean.getName() %></td>
				<td><%=bean.getSex() %></td>
				<td><%=bean.getBirthday() %></td>
				<td><%=bean.getEmail() %></td>
				<td><%=bean.getZipcode() %></td>
				<td><%=bean.getAddress() %></td>
				<td><%=bean.getHobby() %></td>
				<td><%=bean.getJob() %></td>
			</tr>
	<%
		}
	%>
	</table>
</body>
</html>
