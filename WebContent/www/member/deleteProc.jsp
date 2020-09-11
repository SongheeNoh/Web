<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="www.MemberBean, java.util.*"%>

<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mMgr" class="www.MemberMgr" />
<%
String id = (String)session.getAttribute("idKey");
String pw = request.getParameter("pw");

boolean result = mMgr.deleteId(id,pw);

if(result) {
	session.invalidate();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>탈퇴기능수행</title>
<script>
alert('정상적으로 탈퇴처리 되셨습니다.');
   top.document.location.reload(); /*document까지는 자기 자신의 파일인데 top이라는 것은 전체에서 제일 위, 즉 여기서는 index.jsp를 의미한다.*/
   location.href="<%=request.getContextPath()%>/www/left.jsp";
</script>
<% } else { %>
<script>
alert('비밀번호가 맞지 않습니다.');
history.back();
</script>
<% } %>
</head>

<body background="../images/delete.png">
</body>
</html>