<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String path=request.getContextPath();
request.setCharacterEncoding("utf-8");
%>
<%
	ArrayList<Person> plist01 = (ArrayList<Person>)session.getAttribute("plist");
	if(plist01!=null){
		for(Person p1:plist01){
			%><h4>name:<%=p1.getName() %> age:<%=p1.getAge() %> loc:<%=p1.getLoc() %></h4>
		<%}
	}%>
	
	
	<a href="a01_basic.jsp">세션 저장하기</a>
<%--
	session 로그인
	ID: [ 	]
		[로그인] ==>
		@@@님 @회 방문 중 session값을 설정해서 현재 @@회 방문 카운트
		[로그아웃] ==> 초기화
 --%>
 	<% session.invalidate(); %>
 	<form action="login_page.jsp">
 		id:<input type="text" name="id"><br>
 		pass:<input type="password" name="pass"><br>
 		<input type="submit" value="로그인">
 	</form>
</body>
</html>