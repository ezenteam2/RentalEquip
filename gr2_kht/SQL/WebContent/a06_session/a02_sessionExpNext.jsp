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





		<h2>로그인</h2>
		<h3><%=(String)session.getAttribute("id") %>님 <%= session.getAttribute("hits") %>번째 방문입니다!</h3>
		
		
		<input type="button" value="돌아가기" onclick="location.href='a02_sessionExp.jsp'"/>
		<br>
		<input type="button" value="LOGOUT" name="logout"/>
		
		<%
		int hits = (int)session.getAttribute("hits") +1;
		session.setAttribute("hits", hits);
		%>

</body>




<script type="text/javascript">

</script>

</html>