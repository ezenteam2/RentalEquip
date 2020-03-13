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



	<form method="post">
	
	<h2>SESSION 로그인</h2>
	<h2>ID : <input type="text" name="id"/></h2>
	<input type="submit" value="로그인"/>
		
	</form>
	
	<%
		int hits = 1;
		
		String id = request.getParameter("id");
		
		if(id!=null){
		session.setAttribute("id", id);
		session.setAttribute("hits", hits);
		response.sendRedirect("a02_sessionExpNext.jsp");
		};
	%>
	

	
	
</body>




<script type="text/javascript">

</script>

</html>