<%@ page contentType="text/html; charset=EUC-KR"%>
<%
      session.invalidate();
%>
<script>
   alert('�α׾ƿ� �Ǿ����ϴ�.');
   top.document.location.reload(); /*document������ �ڱ� �ڽ��� �����ε� top�̶�� ���� ��ü���� ���� ��, �� ���⼭�� index.jsp�� �ǹ��Ѵ�.*/
   location.href="<%=request.getContextPath()%>/www/left.jsp";
</script>