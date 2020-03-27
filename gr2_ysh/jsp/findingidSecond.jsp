<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="zental.*"
    %>
<jsp:useBean id="mMgr" class="zental.dbModule"/>
<% 
request.setCharacterEncoding("utf-8");
String path = request.getContextPath(); 
String name = request.getParameter("MEM_NAME");
String email = request.getParameter("MEM_EMAIL");
%>  

<%

String result1 = mMgr.findingId(name,email);

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
        <p class="result result__username"><%=name %></p><p class="result">님의 아이디는 </p><p class="result result__id">
       <%=result1 %>
        <p class="result"> 입니다</p>
        <button class="submit" onClick="location.href='login.jsp'">로그인하기</button>    
    </div>
</body>
</html>