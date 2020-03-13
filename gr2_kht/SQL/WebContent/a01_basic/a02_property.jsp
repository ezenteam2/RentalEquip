<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 최상단에 JPS 페이지에 대한 설정 정보 선언 
	1. @ page : 페이지에 대한 선언 Directive라고 한다
		1) language : 프로그래밍 언어
		2) contentType : 화면 출력형식 
		3) pageEncoding : 문자 encoding 방식
	2. html 코드 기반
	3. 스크립트릿(scriptlet), 표현식(expression), 선언부(declaration)를 통해 JAVA코드를 삽입
	4. 이 내용을 servlet형식의 자바 클래스로 만들어 컴파일 및 실행
		결과 html을 생성하여, 요청한 곳에 stream방식으로 파일 전송 및 브라우저에 출력

 -->

<!-- 

# 디렉티브(Directive)
	1. jps페이지에 대한 설정 정보 지정
	2. Directive 구문
		1) 형식 %@ directive이름 속성=속성값 속성=속성값
	3. 제공 directive이름
		1) page : jsp 페이지에 대한 정보 지정
			- 문서 타입, 추력 버퍼 크기, 에러 페이지 등의 정보
		2) taglib : 사용할 태그 라이브러리 지정
			ex) %@ taglib uri="@@@.@@"
		3) include : 다른 페이지를 포함할 때 지정 처리
			ex) %2 include file="##.jsp" 
		
# 스크립트 요소
	1. 동적으로 출력 결과를 생성하기 위해 사용
	2. 스크립트 요소
		1) 표현식(Expression) - 변수를 통해 값을 출력 			ex) %=변수명
		2) 스크립트릿(Scriptlet) - 자바 코드 실행 				ex) %   % 선언
		3) 선언부(Declaration) - 자바 메서드(함수)를 정의			ex) %!  % 사이에 선언

# 기본 내장 객체 (implicit object)
	1) 웹 프로그래밍에 필요한 기능을 제공하는 객체
	2) jsp에서 별도 선언 없이 사용 가능
	3) 주요 기본 객체
		- request	: 정보를 요청할 때
		- response	: 응답과 관련된 설정
		- out		: 직접 응답을 출력할 때
		- session	: 세션 관리에 사용

-->

<%!
	
	int plus(int num01, int num02){
		return num01+num02;
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
// 자바 코드가 들어가있는 block으로 scriptlet이라고 부름
	String pname = "사과";
	int price = 2500;
	int cnt = 5;
	
	String name = request.getParameter("name");
	//request 객체를 생성하지 않고도 사용할 수 있음 => .jsp 파일 service 메서드를 통해
	//protected void service(HttpServletRequest request, HttpServletResponse response)
	//↑ 코드 block을 가지고 있기 때문에
	//이 외에도 내장된 객체를 많이 활요할 수 있음
	session.setAttribute("id", "홍길동");
%>

<body>

	<h2>물건명 : <%=pname%></h2>
	<h2>가격 : <%=price%></h2>
	<h2>갯수 : <%=cnt%></h2>
	<h2>총계 : <%=price*cnt%></h2>
	<h3>함수호출 : <%=plus(25,30)%></h3>


</body>
</html>