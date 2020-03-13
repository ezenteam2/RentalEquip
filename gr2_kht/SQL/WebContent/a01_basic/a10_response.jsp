<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Enumeration"%>
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
# responser 기본 객체
	1. 웹 브라우저에 전송하는 응답 정보 설정
	2. 주요 기능
		1) 헤더 정보 입력
		2) 리다이렉트로 페이지는 server 단에서 이동 처리
	3. 주요 메서드
		1) addHeader(String name, String value)
			name 헤더에 value를 값으로 추가
		2) setHeader(String name, String value)
			name 헤더에 value값을 지정
		3) sendRedirect("이동할 페이지정보") : 특정한 페이지로 서버단에서 이동, client단에 처리하여 그 결과 화면을 출력

--%>




<body>

	<h2>헤더 정보 출력</h2>
	
	<%
	// 저장된 header 정보
	Enumeration headerEnum = request.getHeaderNames();
	while(headerEnum.hasMoreElements()){
		String headerKey = (String)headerEnum.nextElement();
		String headerValue = request.getHeader(headerKey);
		// 헤더의 key와 value를 호출해서 출력
	
	%>
	
		<h3><%=headerKey %> - <%=headerValue %></h3>
	
	<%
	}
	%>

	<h2>로그인 처릿!</h2>
	
	<form method="post">
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="pass"><br>
	<input type="submit" value="로그인힛!">
	</form>
	
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	boolean isInvalid = false;
	
	if(id!=null&&pass!=null){
		if(id.equals("himan")&&pass.equals("7777")){
			response.sendRedirect("a11_main.jsp?id="+id);	//인증 되었으면, main 페이지로 이동 처리
		} else {
			isInvalid = true;								//인증 되지 않음
			
		}
	}
	%>


</body>

<script type="text/javascript">

	var isInvalid=<%=isInvalid%>;
	if(isInvalid){
		alert("로그인 실패!\n다시 로그인 하세요");
	}

</script>
	




</html>