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
	
		<input type="text" name="age" placeholder="나이를 입력하세요"><br>
		<select name="site">
			<option>놀이공원 - 50,000원</option>
			<option>뮤지엄 - 30,000원</option>
			<option>아쿠아리엄 - 40,000원</option>
		</select><br>
		
		<input type="submit" value="입장료 확인!!">
	
	</form>
	
	<%
		

		String site = request.getParameter("site");
		
		if(site!=null){
			String page1="";
			if(site.equals("놀이공원 - 50,000원")) page1="a06_forwardEXP_1.jsp";
			if(site.equals("뮤지엄 - 30,000원")) page1="a06_forwardEXP_2.jsp";
			if(site.equals("아쿠아리엄 - 40,000원")) page1="a06_forwardEXP_3.jsp";
	
	%>
	
		<jsp:forward page="<%=page1 %>"/>
	
	<%
	}
	%>

</body>




<script type="text/javascript">

</script>

</html>