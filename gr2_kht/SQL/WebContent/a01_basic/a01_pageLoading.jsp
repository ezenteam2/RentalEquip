<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 

# URL(Uniform Resource Locator)
	1. 구성
		http://www.google.com/search?hl=en&q=jsp&oq=call
		http://192.168.0.23:7080/member/login.jsp?id=himan&pass=7777
		1) [protocol]://[host][:port]/[경로][파일명][.확장자명][query string]
		2) 구성 내용
			- 프로토콜	: 네트웍상 패킷(데이터 전송 단위) 전송 방식
						ex) http	- hypertext markedup language를 효과적으로 전송
			- 호스트	: 접속할 서버의 ip 위치 도메인을 통해 연동
			- 포트	: 처리할 서비스를 구분 (해당 ip 서버에서 여러 서비스를 지원할 수 있으므로)
			- 경로	: 서블릿은 uri mapping된 주소로 호출하고,
					  jsp나 특정한 웹자원(css, image)은 프로젝트명/Webcontent를 기본 경로로 사용하고, 하위에 폴더를 만들어 접근
					    프로젝트명 ==? 프로젝트명/Webcontent를 지칭
			- 쿼리스트링 : 요청값을 서버에 전달했을 때, 웹 서버에 있는 웹어플리케이션 컨테이너에서 java프로그램이 해석하여 처리하는 요청값 처리형식
					    형식 : key=value&key=value ...
							요청값은 request.getParameter("key") ==> 데이터를 value로 처리

-->

<!-- http://localhost:5080/jspexp/a01_basic/a01_pageLoading.jsp?name=홍길동&loc=서울신림동 -->

	<h1>요청값 받은 내용</h1>
	<h2>이름:${param.name}</h2>
	<h2>사는곳:${param.loc}</h2>

</body>
</html>