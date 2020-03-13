<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	5. 웹 화면에 현재 접속한 client의 ip를 list로 출력할려고 한다.
	해당 프로그램을 처리하세요.
 -->
 
 <%
 	String inputIp = request.getRemoteAddr();
 	// static 변수를 이용하여 ArrayList 처리
 	// 서버에 고정 변수 선언
 	
 	ArrayList<String> list = new ArrayList<String>();
 	
 %>

</body>
</html>