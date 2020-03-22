<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="practice.SignupDBModule"/>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
boolean result = (boolean)mMgr.checkId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%=id %>
	<%
	if(result){
		out.println("는 이미 존재하는 ID입니다");
	}else{
		out.println("는 사용 가능 합니다");
	}
	%>
	<a href="#" onClick="self.close()">닫기</a>
</body>
</html>