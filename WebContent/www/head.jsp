<%@ page contentType="text/html; charset=euc-kr"%>
<%
	  String id = (String) session.getAttribute("idKey");
	  String cPath = request.getContextPath();
	  String url = "member/member.jsp";
	  String label = "회원가입";
      if(id!=null){
        url = "member/memberUpdate.jsp";
        label = "회원수정";
      }
%>

<embed src = "<%=cPath%>/www/bgm/Shakira - Try Everything(OST Zootopia 2016).mp3"
autostart="true" loop ="true" showtracker ="false" showpositioncontrols = "false" width = "120" height="22">

<html>
<head>
<title>head</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" rightmargin="0" style="background-color: rgba(0, 0, 0, 1); border-bottom:3px solid gold;">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="5">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
					<tr>
						<td height="40%" align="center">
						<a href="<%=cPath%>/www/index.jsp" target="_parent" onFocus="this.blur();">
						<img src="images/logo.png" border=0></a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="5">&nbsp;</td>
		</tr>
	</table>
</body>
</html>