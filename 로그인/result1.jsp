<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String path=request.getContextPath();
request.setCharacterEncoding("utf-8");
%>
<%
	String id = (String)session.getAttribute("id");
	String pass = (String)session.getAttribute("pass");
	int cnt = (int)session.getAttribute("cnt");
	++cnt;
	session.setAttribute("cnt", cnt);
%>

	<h1><%=id %>님 <%=cnt %>회 방문중</h1>
	<a href="a02_show.jsp">로그아웃</a>
</body>
</html>