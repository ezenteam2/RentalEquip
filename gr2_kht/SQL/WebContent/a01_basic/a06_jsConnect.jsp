<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<script type="text/javascript">
<%
// a06_jsConnect.jsp?name=홍길동
String name = request.getParameter("name");
if(name==null) name="매개값 없음";
%>
	document.querySelector("h1").innerHTML="<%=name%>";
</script>

</html>