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
	Product product01 = (Product)pageContext.getAttribute("product01");
	if(product01==null) product01 = new Product();
	Product product02 = (Product)session.getAttribute("product02");
	if(product02==null) product02 = new Product();
%>

	<h2>페이지 범위로 저장된 product01 : <%=product01.getName() %><%=product01.getPrice() %><%=product01.getNum() %></h2>
	<h2>세션 범위로 저장된  product02 : <%=product02.getName() %><%=product02.getPrice() %><%=product02.getNum() %></h2>

	<a href="a02_nextExp.jsp">또 다음 페이지에서 호출해보긔</a>

</body>




<script type="text/javascript">

</script>

</html>