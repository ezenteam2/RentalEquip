<!-- 

# page directive
	1. jsp 페이지에 대한 정보 입력
		-jsp가 생성할 문서의 타입, 사용할 클래스, 버퍼여부, 세션 여부 선언
	2. jsp directive 작성
		속성 = 속성값
	3. directive의 주요 속성과 활용
		1) contentType : jsp가 생성할 무서의 타입 지정
			- response 객체를 통해서 출력할 형식 선언
			ex) contentType="text/html; charset-UTF-8" : html 화면
			contentType="application/vnd.ms-excel:charset-utf-8"
		2) import : jsp 페이지에 사용할 자바 클래스 지정	

 -->



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_vo.Person"%>
    
<%
/*
	response.setHeader("Content-Disposition", "attachment:filename=excel.xls");
	response.setHeader("Content-Description", "JSP Generated Data");
	response.setContentType("application/vnd.ms-excel");
*/

	Person p01 = new Person("홍길동", 25, "서울신림동");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border>
	
		<tr><th>하잇</th></tr>
		<tr><td>방가</td></tr>
		<tr><td>방가</td></tr>
		<tr><td>햄토리</td></tr>
		<tr><td>이름 : <%=p01.getName()%></td></tr>
		<tr><td>나이 : <%=p01.getAge()%></td></tr>
		<tr><td>사는 곳 : <%=p01.getLoc()%></td></tr>
	
	</table>


</body>
</html>