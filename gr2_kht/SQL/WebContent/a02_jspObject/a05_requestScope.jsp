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

<%
	pageContext.setAttribute("page01","홍길동(page)");				//현재 페이지
	request.setAttribute("request02", "김길동(request)");				//다음 페이지
	session.setAttribute("session03", "마길동(session)");				//브라우저 단위
	application.setAttribute("application04", "신길동(application)");	//서버 단위
	
	
	
	request.getRequestDispatcher("a06_reqPage.jsp").forward(request, response);
	//호출 되는 순간 reqPage로이동
	
	//request, session, application의 정보를 가지고 이동함
	//page.Context는 버림
	
%>

<body>

</body>




<script type="text/javascript">

</script>

</html>