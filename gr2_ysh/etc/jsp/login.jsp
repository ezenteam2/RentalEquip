<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("idkey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(id!=null){
	%>
	<%=id %>님 환영합니다
	<a href="logout.jsp">로그아웃</a>
	<%}else{%>
	<form name="loginFrm" method="post" action="loginproc.jsp">
	<input name="id"><br>
	<input name="pwd"><br>	
	<input type="submit">
	</form>
	<% } %>
</body>
</html>