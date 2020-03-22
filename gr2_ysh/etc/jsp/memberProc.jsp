<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id ="mgr" class="practice.SignupDBModule"/>
<jsp:useBean id="bean" class="practice.Javabeans"/>
<<jsp:setProperty property="*" name="bean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	boolean result = mgr.insertJavabeans(bean);
	String msg;
	String location;
	if(result){
		msg = "회원가입에 성공했습니다";
		location = "login.jsp";
	}else{
		msg = "회원가입에 실패했습니다";
		location = "signup.jsp";
	}
	%>
	<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
	</script>
</body>
</html>