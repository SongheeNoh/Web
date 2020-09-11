<%@ page contentType="text/html; charset=EUC-KR"%>
<%
      session.invalidate();
%>
<script>
   alert('로그아웃 되었습니다.');
   top.document.location.reload(); /*document까지는 자기 자신의 파일인데 top이라는 것은 전체에서 제일 위, 즉 여기서는 index.jsp를 의미한다.*/
   location.href="<%=request.getContextPath()%>/www/left.jsp";
</script>