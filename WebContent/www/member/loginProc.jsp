<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="www.MemberMgr"/>
<%
	  request.setCharacterEncoding("euc-kr");
	  String cPath = request.getContextPath();
	  String id = request.getParameter("id");
	  String pass = request.getParameter("pass");
	  String url = cPath+"/www/left.jsp";
	  String msg = "로그인에 실패하였습니다.";
	  
	  boolean result = mMgr.loginMember(id,pass);
	  if(result){
	    session.setAttribute("idKey",id);
	    if (id.equals("admin")) {
	    	msg = "관리자 계정으로 로그인되었습니다.";
	    }
	    else {
	    msg = "로그인에 성공하였습니다.";
	    }
	  }
%>
<script>
	alert("<%=msg%>");
	top.document.location.reload(); 
	location.href="<%=url%>";
</script>