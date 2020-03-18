<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String nextPage=request.getParameter("nextPage");
%>
	<h1>상단입니다.</h1>
	<form>
		<input type="text" name="nextPage">
		<button type="submit">이동</button>
	</form>
	<jsp:include page="child.jsp" flush="false">
		<jsp:param name="nextPage" value="<%=nextPage %>" />
	</jsp:include>
	<h1>하단입니다.</h1>
</body>
</html>