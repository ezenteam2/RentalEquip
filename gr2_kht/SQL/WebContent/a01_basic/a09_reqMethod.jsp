<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

<%--
# REQUEST 기본 객체의 주요 메서드
	1. 기본 URL 기준으로 서버의 정보 확인
		http://localhost:5080/jspexp/a01_basic/a09_reqMethod.jsp
	2. 주요 메서드
		1) getRemoteAddr() : 웹 서버에 연결한 IP 주소 호출
			ex) 게시판이나 방명록 등 글 작성자의 IP 주소가 자동으로 입력되는 것
		2) getMethod() : 웹브라우저가 정보에 접근할 때 사용하는 방식 (get/post)
		3) getRequestURI() : 웹 브라우저가 요청한 URI 자원의 경로
		4) getContextPath() : JSP 페이지가 속한 웹 애플리케이션의 컨텍스트 경로
		5) getServerName() : 연결할 때 사용한 서버 이름을 호출
		6) getServerPort() : 연결할 때 사용한 서버 포트 호출
	3. 주요 메서드 (매개변수)
		1) getParameter(String name) : 이름이 name인 파라미터의 값을 가져 옴, 없을 땐 NULL
		2) getParameterValues(String name) : 이름이 name인 모든 파라미터의 값을 배열로 가져옴, 없을 땐 NULL
		3) getParameterNames() : 웹 브라우저가 전송한 파라미터의 이름을 java.util.Enumeration으로 리턴
									form 하위에 있는 모든 key값을 보냄
		4) getParameterMap() : 웹 브라우저가 전송한 파라미터의 맵을 <파라미터 이름, 값>쌍으로 구성
									form 하위에 있는 모든 keyvalue의 map을 리턴
 --%>
 
<%
	System.out.println("접속자 : " + request.getRemoteAddr());
%>

<body>

	<h2>REQUEST의 기본 메서드</h2>
	<h4>request.getRemoteAddr() <%=request.getRemoteAddr() %></h4>
	<h4>request.getMethod() <%=request.getMethod() %></h4>
	<h4>request.getRequestURI() <%=request.getRequestURI() %></h4>
	<h4>request.getContextPath() <%=request.getContextPath() %></h4>
	<h4>request.getServerName() <%=request.getServerName() %></h4>
	<h4>request.getServerPort() <%=request.getServerPort() %></h4>
	<a href="<%=path %>/a01_basic/a01_pageLoading.jsp">첫화면</a>
	<img src="<%=path %>/a00_img/img01.jpg">
	
	
<% /* 	
	<form method="post">			<!-- post 방식은 주소창(url)에 요청값이 나타나지 않음 -->
	
		요청1 : <input name="product"/><br>
		요청2 : <input name="product"/><br>
		요청3 : <input name="product"/><br>
		요청4 : <input name="product"/><br>
		<input type="submit"/>
	
	</form>
*/ %>


	<form method="post">
	
	<input type="checkbox" name="product" value="사과">딸기<br>
	<input type="checkbox" name="product" value="바나나">바나나<br>
	<input type="checkbox" name="product" value="망고">망고<br>
	<input type="checkbox" name="product" value="리치">리치<br>
	<input type="checkbox" name="product" value="마시따">마시따<br>
	<input type="submit">
	
	</form>
	
	<!-- 
	type checkbox 요청값 처리
		=> check 된 요청값만을 전달, check가 false이면 요청값이 전달되지 않음
	 -->


	
	<%
	// 다중의 요청값에 대한 처리 request.getParemeterValues("다중요청이름")
	String products[] = request.getParameterValues("product");
	if(products!=null){
		for(String prod:products){
			System.out.println("요청값 확인" + prod);
		
	%>
		<h4><%=prod %></h4>
	<%
		}
	}
	%>
	

</body>
</html>