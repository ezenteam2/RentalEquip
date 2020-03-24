<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="zental.dbModule"/>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("MEM_ID");
String pwd = request.getParameter("MEM_PW");
String url;
String msg;

boolean result = mMgr.loginMember(id,pwd);
if(result){
	session.setAttribute("idkey",id);
	msg="로그인에 성공했습니다";
	url="../../gr2_kht/user_w_ht_mainIndex.jsp";
}else{
	url = "login.jsp";
	msg = "로그인에 실패했습니다";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
alert("<%=msg%>");
location.href="<%=url%>";
</script>
</body>
</html>