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
	<div style="background-color:yellow;height:100%;display:inline-block;width:300px;">
		<h3><%=request.getParameter("cate01") %></h3>
		<h3><%=request.getParameter("cate02") %></h3>
		<h3><%=request.getParameter("cate03") %></h3>
		<h3><%=request.getParameter("cate04") %></h3>
	</div>

</body>




<script type="text/javascript">

</script>

</html>