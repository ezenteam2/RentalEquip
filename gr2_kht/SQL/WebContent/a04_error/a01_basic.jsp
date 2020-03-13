<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    errorPage="../z01_error.jsp"
    %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>

<%--

#jsp에서 에러 처리
	1. jsp는 servelet 클래스로 컴파일되므로 자바관련 에러가 페이지에서 발생
		-> 페이지 단위의 에러 처리가 필요
		-> 일반적으로 따로 설정된 에러페이지를 출력시켜 해당 사이트의 신뢰도를 높이는데 쓰기도 함
	2. 에러 페이지 지정 처리
		1) 에러가 발생하는 경우 출력할 페이지 만들기
			<%@ page isErrorPage="true" %> : 현재페이지가 에러 처리를 위한 페이지임을 표시
				ex) exception.getMessage(),
					exception.printStackTrave()
						****주의 : IE - 에러 페이지의 응답 데이터 크기가 513byte보다 커야 정상적으로 에러페이지가 노출 됨
		2) 일반 페이지를 만들 때, 에러가 발생했을 때 대체할 에러페이지를 상단에 선언
			<%@ page errorPage="error.jps" &> 
		
	3. 서버 단위(web.xml)에서
		1) 응답 상태 코드별 에러 페이지 지정
		2) 예외 타입 별 에러 페이지 지정
	4. 에러 페이지 우선 순위 및 에러 페이지 지정 형태
	5. 버퍼와 에러 페이지 처리
	

 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>

</style>

<title>Insert title here</title>
</head>
<body>
<%
 String s=null;
%>

<%=s.toString() %>



</body>




<script type="text/javascript">

</script>

</html>