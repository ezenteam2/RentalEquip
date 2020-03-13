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
 	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	int cnt=0;
	
	session.setAttribute("id", id);
	session.setAttribute("pass", pass);
	session.setAttribute("cnt", cnt);
	
	response.sendRedirect("result1.jsp");
 %>

</body>
</html>