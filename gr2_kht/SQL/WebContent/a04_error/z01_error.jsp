<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    isErrorPage="true"
    %>
    
    <%-- isErrorPage를 사용하여 현재 페이지가 error 처리를 위한 페이지라는 것을 선언 --%>
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

	<h1>EMERGENCY!!!!!!!!!!!!!!!!!!</h1>
	<h2>요청 에러 발생!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h2>
	<h3>에러 타입 : <%=exception.getClass().getName() %></h3>
	<h3>에러 메세지 : <%=exception.getMessage() %></h3>
	<h3>잠시 기다리면 담당자와 통화가 가능합니다</h3>
	<img src="innerPiece.jpg">

</body>




<script type="text/javascript">

</script>

</html>