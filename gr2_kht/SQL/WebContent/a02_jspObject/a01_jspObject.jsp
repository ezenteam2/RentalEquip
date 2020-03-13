<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>

<%--
#  JSP의 기본 객체
	1. JSP는 변수들을 저장할 때, 특정한 범위로 저장 가능
		이 때 활용되는 객체가 scope 범위로 한페이지 단위에서
		데이터를 저장하고 활용할 수 있는
		pageContext	: 요청 page까지
		request		: 브라우저가 닫힐 때까지
		session		: 서버단위로
		application
		으로 기본 객체를 지원함
	2. scope가 지원하는 기본 객체의 메서드
		1) .setAttribute("key", 할당할 객체);
		2) .setAttribute("key") : 특정한 key로 저장된 객체를 가져올 때
--%>

<%

	String pgName = "홍길동";
	pageContext.setAttribute("name01", pgName);
	String ssName = "김길동";
	session.setAttribute("name02", ssName);
	session.setAttribute("p01", new Person("마길동",25,"서울"));

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>


</style>

<title>Insert title here</title>
</head>
<body>

	<h2>페이지 범위로 저장된 이름 pageContext : <%=pageContext.getAttribute("name01") %></h2>
	<h2>세션 범위로 저장된 이름 session : <%=session.getAttribute("name02") %></h2>
	
	<%
	Person p01 = (Person)session.getAttribute("p01");
	%>
	<h3> 세선 볌위로 저장한 객체의 이름, 나이, 사는 곳 : <%=p01.getName() %><%=p01.getAge() %><%=p01.getLoc() %></h3>
	
	<a href="a02_next.jsp">다음 페이지에서 호출</a>


</body>




<script type="text/javascript">

</script>

</html>