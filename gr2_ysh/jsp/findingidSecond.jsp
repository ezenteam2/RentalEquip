<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="zental.*"
    %>
<% 
request.setCharacterEncoding("utf-8");
String path = request.getContextPath(); %>  
<%
	dbModule db = new dbModule();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZENTAL-사지말고 빌리세요</title>
    <link rel="stylesheet" href="../css/findingid2.css">
</head>
<body>
    <div class="result--box">
        <p class="result result__username">최준범</p><p class="result">님의 아이디는 </p><p class="result result__id">
       
        <p class="result"> 입니다</p>
        <button class="submit" onClick="location.href='login.jsp'">로그인하기</button>    
    </div>
</body>
</html>