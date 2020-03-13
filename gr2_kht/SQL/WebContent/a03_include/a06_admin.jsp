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

	<h2>관리자 페이지</h2>
	<%--
	jsp:foward 지시자로 요청값까지 넘겨 받으므로 request 파라미터를 사용할 수 있음
	 --%>
	<h3><%=request.getParameter("id") %>님 하읫!</h3>


</body>




<script type="text/javascript">

</script>

</html>