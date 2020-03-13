<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_vo.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	String name = request.getParameter("name");
	if(name==null) name="";
	
	String price = request.getParameter("price");
	int priceStr=0;
	
	if(priceStr!=null) price=Integer.parseInt(priceStr);
	String 

%>

<body>

</body>
</html>