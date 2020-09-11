<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="www.MemberBean, java.util.*"%>

<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mMgr" class="www.MemberMgr" />
<%
String deleteMemberID = request.getParameter("deleteMemberID");
String pw = request.getParameter("adminpw");

boolean result = mMgr.adminDeleteId(deleteMemberID, pw);

if(result) {
	session.invalidate();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원삭제 기능수행</title>
<script>
alert('정상적으로 회원이 삭제되었습니다.');
   top.document.location.reload(); /*document까지는 자기 자신의 파일인데 top이라는 것은 전체에서 제일 위, 즉 여기서는 index.jsp를 의미한다.*/
   location.href="<%=request.getContextPath()%>/www/left.jsp";
</script>
<% } else { %>
<script>
alert('관리자 비밀번호가 맞지 않습니다.');
history.back();
</script>
<% } %>
</head>

<body background="../images/delete.png">
</body>
</html>