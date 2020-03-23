<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,zental.*"
    import="ZENTAL.b01_database.*"
    %>
<jsp:useBean id ="mgr" class="zental.dbModule"/>
<jsp:useBean id="bean" class="zental.UserinfoBean"/>
<jsp:setProperty property="*" name="bean"/>    
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/findingid2.css">
</head>
<body>
	<%
	boolean result = mgr.insertUserinfo(bean);

	if(result){
		%>
		<div class="result--box">
        	<p class="result" style="text-align : center">회원 가입이 완료되었습니다</p>
        	<button class="submit" onClick="location.href='login.jsp'">로그인하기</button>    
    	</div>
		<%
	}else{
		out.println("회원가입에 실패했습니다");
	}
	%>
	<script>

	</script>
</body>
</html>