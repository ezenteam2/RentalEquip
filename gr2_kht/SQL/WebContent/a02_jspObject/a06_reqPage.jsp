<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>


</style>

<title>Insert title here</title>
</head>
<body>

	<h2>page 범위 : <%=pageContext.getAttribute("page01")%></h2>
	<h2>request 범위 : <%=request.getAttribute("request02")%></h2>

	<h2>session 범위 : <%=session.getAttribute("session03")%></h2>
	<h2>application 범위 : <%=application.getAttribute("application04")%></h2>
	<!-- session 범위로 전송, request는 버림 -->
	<a href="a07_sesPage.jsp">다음으로 또 이동</a>

</body>




<script type="text/javascript">

</script>

</html>