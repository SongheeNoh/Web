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
<title>Ż���ɼ���</title>
<script>
alert('���������� Ż��ó�� �Ǽ̽��ϴ�.');
   top.document.location.reload(); /*document������ �ڱ� �ڽ��� �����ε� top�̶�� ���� ��ü���� ���� ��, �� ���⼭�� index.jsp�� �ǹ��Ѵ�.*/
   location.href="<%=request.getContextPath()%>/www/left.jsp";
</script>
<% } else { %>
<script>
alert('��й�ȣ�� ���� �ʽ��ϴ�.');
history.back();
</script>
<% } %>
</head>

<body background="../images/delete.png">
</body>
</html>