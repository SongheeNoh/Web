<%@ page contentType="text/html; charset=EUC-KR" %>
<%
      String strTitle = "JSP Home";
	  String cPath = request.getContextPath();
%>
<html>
<head>
<title><%=strTitle%></title>
</head>
<%--frameset을 세 번 사용하여 화면을 네개로 나눔--%>
<frameset frameborder="0" framespacing="0" border="0" rows="203,*" > <%-- row가 높이, cols가 너비, *은 나머지 영역을 차지한다는 의미--%> 
	<frame  frameborder="0" scrolling="NO" noresize name="head" src="<%=cPath%>/www/head.jsp">
	<frameset name="body" frameborder="0" framespacing="0" border="0" rows="*,20">
        <frameset name="main" frameborder="0" framespacing="0" border="0" cols="240,*,240">
    			<frame name="left" marginwidth="0" marginheight="0" frameborder="0" scrolling="NO" resize="YES" src="<%=cPath%>/www/left.jsp">
    			<frame name="content" src="<%=cPath%>/www/main.jsp" scrolling="YES" marginwidth="0" marginheight="0" frameborder="0" noresize>
    			<frame name="right" marginwidth="0" marginheight="0" frameborder="0" scrolling="NO" resize="YES" src="<%=cPath%>/www/right.jsp">
        </frameset>
		<frame name="copy" src="<%=cPath%>/www/copy.jsp" scrolling="NO" marginwidth="0" marginheight="0" frameborder="0" noresize>        
	</frameset>
</frameset>
</html>