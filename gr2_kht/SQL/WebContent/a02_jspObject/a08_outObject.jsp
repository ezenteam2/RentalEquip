<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    buffer="8kb" autoFlush="false"
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
<body>
<!-- 
# out 기본 객체 주요 메서드
	1. 출력 메서드
		- print()	: 데이터 출력
		- println()	: 데이터 출력, \r\n(첫 번째 줄 바꿈) 포함
		- newLine() : \r\n 출력
	2. 버퍼 관련 메서드 (buffer - 웹프로그램에서 임시 메모리를 통해 보다 효과적으로 화면을 처리해주는 기능)
		- int getBufferSize()	: 버퍼의 크기
		- int getRemaining()	: 현재 남은 버퍼의 크기
		- clear()				: 버퍼의 내용을 비움, 이미 버퍼가 플러시 되었다면 IPException 발생
		- clearBuffer()			: 버퍼의 내용을 비움
		- flush()				: 버퍼 플러시
		- boolean isAutoFlush()	: 버퍼가 다 찼을 때, 자동으로 플러시할 경우 true를 리턴
 -->


	<h2>out 객체의 메서드 활용!!</h2>
	
	<%
	// out 객체를 통한 처리
	out.println("하읫!");
	%>
	<br>
	<h3> 데이터 출력
	<%
	out.println("결과를 나타냅니다");
	%>
	</h3>
	
	<h2>BUFFER 정보</h2>
	<%--
	# 버퍼 정보의 크기 설정
		1. page 지시자로 buffer="크기설정"
		2. autoFlush="true|false"
	# 버퍼 메모리 확인
		1. 버퍼의 크기 : out.getBufferSize()
		2. 남은 크기 : out.getRemaining()
		3. auto flush여부 : out.isAutoFlush()
	 --%>
	 
	 <h3>버퍼의 크기 : <%=out.getBufferSize() %></h3>
	 <h3>남은 버퍼의 크기 : <%=out.getRemaining() %></h3>
	 <h3>auto flush : <%=out.isAutoFlush() %></h3>
	 
	
	

</body>




<script type="text/javascript">

</script>

</html>