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

<%
	String ageSt = request.getParameter("age");
	int ageInt = Integer.parseInt(ageSt);
	double discount = 0;	

	if (ageInt<3||ageInt>=65) discount=1;
	if (ageInt<7) discount=0.5;
	if (ageInt<13) discount=0.4;
	if (ageInt<20) discount=0.3;
	
%>

	<h1>뮤지엄 입장료 - 30000원</h1>
	<h3><%=ageInt %>세 손님 입장</h3>
	<h3><%=discount*100 %>% 할인!!!</h3>
	<h3>입장료 : <%=30000*(1-discount) %></h3>

</body>




<script type="text/javascript">

</script>

</html>