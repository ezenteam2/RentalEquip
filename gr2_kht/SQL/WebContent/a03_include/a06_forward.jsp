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

<%--
# <jsp:forward>액션 태그
	1. 하나의 JSP페이지에서 다른 JSP 페이지로 요청 처리를 전달할 때
 --%>

	<form method="post">
	
		<select name="auth">
			<option>관리자</option>
			<option>일반사용자</option>
			<option>방문자</option>
		</select><br>
			
			아이디:<input type="text" name="id"/><br>
		<input type="submit" value="로긘!"/>
	
	</form>
	
	
	
<%

	String auth = request.getParameter("auth");

	if(auth!=null){
		String page1="";
		if(auth.equals("관리자")) page1="a06_admin.jsp";
		if(auth.equals("일반사용자")) page1="a06_normal.jsp";
		if(auth.equals("방문자")) page1="a06_quest.jsp";
%>

	<jsp:forward page="<%=page1 %>"/>


<%
	}
%>	

	
	

<body>

</body>




<script type="text/javascript">

</script>

</html>