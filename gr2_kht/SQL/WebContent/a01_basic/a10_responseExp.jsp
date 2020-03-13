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
<body>

<!-- 
	임의의 구구단 문제
	정답이면 미션 성공! 아니면 현재 페이지에서 계속 문제를 풀게
 -->

	<%
	int num01 = (int)(Math.random()*8+2);
	int num02 = (int)(Math.random()*9+1);
	%>
	
	<form>
	<h2><%=num01 %> X <%=num02 %> = </h2>
	정답은 ? <input type="text" id="answer">
	<input type="submit">
	</form>


	<%
	String answer = request.getParameter("answer");
	int answerInt = Integer.parseInt(answer);
	if (answer!=null && answerInt==num01*num02) {
	%>
	
	<h2>입력하신 값은 <%=answerInt %></h2>
	<h1>정답입니다!!!</h1>
	
	<%
	} else if (answer!=null && answerInt!=num01*num02){
	%>
	<h2>입력하신 값은 <%=answerInt %></h2>
	<h1>틀렸습니다 멍청한 자식아 그것도 모르냐</h1>

	<%
	}
	%>
 -->		
	

</body>
<script type="text/javascript">
	
</script>

</html>