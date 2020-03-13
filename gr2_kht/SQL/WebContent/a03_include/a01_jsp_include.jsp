<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"%>
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
# <jsp:include> 액션 태그
	1. 다른 jsp 페이지의 실행결과를 현재 위치에 삽입하여 처리
	2. 동작방식
		1) main.jsp에 포함된, <jsp:include>가 실행되면 지정된 페이지로 요청 흐름이 이동
			해당 페이지가 처리하고 난 후, 다시 <jsp:include>이후 내용 처리
	3. 기본 활용
		1) 구문 : <jsp:include page="포함할 페이지" flush="true" />
		2) flush 속성 : 지정한 jsp페이지를 실행하기 전에 출력 버퍼의 플러시 여부 설정
						true - 플러시, false - 플러시 하지 않음
		3) 포함된 내부 페이지에 데이터 전달
			<jsp:param> 액션 태그를 이용하여 해당 페이지에 데이터 전달
			name="전달될요청key" value="전달될값"
			
			ex)
			<jsp:include page="top.jsp" flush="flase">
				<jsp:param name="param1" value="value1"/>
			</jsp>
			==> top.jsp?param1=value1 과 동일한 결과 (get방식)
		4) 포함된 페이지는 위와 같은 요청값을 request.getParameter("param1");로 활용 가능
 --%>

<body>

	<%-- 상단 페이지 --%>
	<%-- 해당 페이지로 요청값 전송 --%>
	<jsp:include page="a01_top.jsp">
		<jsp:param value="홍길동" name="name01"/>
		
	</jsp:include>
	
	
	
	
	<h2>안녕하세요 메인 페이지입니다</h2>
	<h3>메인 페이지 내용</h3>
	
	
	<jsp:include page="a01_bottom.jsp"></jsp:include>
	


</body>




<script type="text/javascript">

</script>

</html>