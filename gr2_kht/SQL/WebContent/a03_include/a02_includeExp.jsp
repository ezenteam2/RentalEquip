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


	<jsp:include page="a02_includeExpTop.jsp">
		<jsp:param value="코기식빵" name="name02"/>
	</jsp:include>
	
	
	<jsp:include page="a02_includeExpLeft.jsp">
		<jsp:param value="전자" name="cate01"/>
		<jsp:param value="잡화" name="cate02"/>
		<jsp:param value="식품류" name="cate03"/>
		<jsp:param value="관리" name="cate04"/>
	</jsp:include>
	
	<div style="display:inline-block;">
	<h1>여기는 메인 페이지인데</h1>
	<h2>그렇다면 여기는 어떻게 되는거????????</h2>
	</div>


</body>




<script type="text/javascript">

</script>

</html>