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
		out.println("�� �̹� �����ϴ� ID�Դϴ�");
	}else{
		out.println("�� ��� ���� �մϴ�");
	}
	%>
	<a href="#" onClick="self.close()">�ݱ�</a>
</body>
</html>