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
<title>ȸ������ ��ɼ���</title>
<script>
alert('���������� ȸ���� �����Ǿ����ϴ�.');
   top.document.location.reload(); /*document������ �ڱ� �ڽ��� �����ε� top�̶�� ���� ��ü���� ���� ��, �� ���⼭�� index.jsp�� �ǹ��Ѵ�.*/
   location.href="<%=request.getContextPath()%>/www/left.jsp";
</script>
<% } else { %>
<script>
alert('������ ��й�ȣ�� ���� �ʽ��ϴ�.');
history.back();
</script>
<% } %>
</head>

<body background="../images/delete.png">
</body>
</html>