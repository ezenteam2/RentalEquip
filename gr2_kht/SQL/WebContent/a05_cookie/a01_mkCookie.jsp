<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    import="java.net.URLEncoder"
    %>
    
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>


</style>

<title>Insert title here</title>
</head>

<%--
# 쿠키(Cookie)
	1. 쿠키란 웹 브라우저가 보관하는 데이터로 웹 서버에 요청을 보낼 때 함께 전송
		1) 생성은 웹서버, response 객체에 쿠키 생성할 것을 탑재하여 클라이언트에 전송
		2) 클라이언트는 사용하는 브라우저를 통해 쿠키값을 받아 특정한 쿠키장소에 저장
		3) 웹서버에 재 접속할 때 클라이언트가 가지고 있는 쿠키를 request 객체를 통해 전달
		4) request 객체를 통해 쿠키를 전달받은 웹서버는 클라이언트 식별 및 데이터를 전달 받음
	2. 쿠키의 구성 요소
		1) 이름, 값, 유효시간, 도메인, 경로로 구성
		2) 쿠키 이름은 아스키 코드의 알파벳과 숫자만 포함할 수 있음
		3) 콤마(,), 세미콜론(;), 공백( ) 등의 문자는 포함 불가
		4) "$"로 시작 불가
	3. 쿠키의 생성과 읽기
		1) Cookie c01 = new Cookie("쿠키의 이름", "쿠키의 값");
		2) response.addCookie(co01);				// 서버가 클라이언트에 전달
		3) Cookie [] cookies = request.getCookie();	// 클라이언트에서 전달된 쿠키를 서버가 확인
		4) 쿠키의 주요 메서드
			- getName()		: 쿠키의 이름
			- getValue()	: 쿠키의 값
	4. 쿠키의 삭제
		1) Cookie의 속성 설정
			setMaxAge(유효시간)	: 쿠키의 유효시간 설정
			response.addCookie(cookie) 쿠키 만료시간을 client에 전송
	5. 쿠키의 식별 이름 설정 .(domain)
		1) setDomain("쿠키의 도메인명 설정")
	6. 쿠키의 이름과 값의 한글화 처리
		1) 설정시
			import="java.net.URLEncoder"
			URLEncoder.encode("쿠키설정key나 값", "utf-8")를 통해  encoding 후
			ex) new Cookie(	URLEncoder.encode("홍길동", "utf-8'),
							URLEncoder.encode("서울신림동", "utf-8'));
		2) 쿠키값을 가져올 때
			import="java.net.URLDecoder"
			URLDecoder.decode("저장된쿠키값", "utf-8")
			ex) for(Cookie ck:request.getCookies())
		
 --%>

<body>

	<%
	
	Cookie ck01 = new Cookie("name", "himan");
	response.addCookie(ck01);
	Cookie ck02 = new Cookie("age", "25");
	response.addCookie(ck02);
	
	Cookie ck03 = new Cookie(URLEncoder.encode("홍길동","utf-8"),
							URLEncoder.encode("서울신림동", "utf-8'));
	
	
	 %>

	<h2>생성된 쿠키(서버 -> 클라이언트)</h2>
	<h3><%=ck01.getName() %> - <%=ck01.getValue() %></h3>
	<h3><%=ck02.getName() %> - <%=ck02.getValue() %></h3>
	
	<table>
		<tr onclick="goCookie(0)"><td>쿠키 값 확인 (0)</td></tr>
		<tr onclick="goCookie(1)"><td>쿠키 값 확인 (1)</td></tr>
	</table>
	
	<a href="a02_showCookies.jsp">쿠키 값 확인</a>


</body>




<script type="text/javascript">
	function goCookie(num){
		location.href="a02_showCookies.jsp?num="+num;
	}
</script>

</html>