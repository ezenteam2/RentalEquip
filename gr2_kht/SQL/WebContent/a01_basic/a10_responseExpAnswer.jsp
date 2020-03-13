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

<%
	String strNum01 = request.getParameter("num01");
	String strNum02 = request.getParameter("num02");
	String strReply = request.getParameter("reply");
	// 요청값 request
	// 초기 화면에서는 문제를 처리하는 부분으로 동시에 처리
	
	
	boolean isNotCorrect=false;
	// 정답이 아닌 경우, js에서 유효성 check로 alert()처리를 위한 변수
	
	if(strReply==null){
	// strReply 입력을 기준으로 "초기화면"인지, "입력 후 화면"인지 구분
		
		strNum01 = ""+(int)(Math.random()*8+2);
		strNum02 = ""+(int)(Math.random()*9+1);
		//strReply 입력 전 "초기화면"일 경우 문제 제출
		
	} else {
		// 요청 값이 있을 경우 "입력 후 화면"으로 문제에 대한 정답과 입력한 값을 비교
		
		int num01 = Integer.parseInt(strNum01);
		int num02 = Integer.parseInt(strNum02);
		int reply = Integer.parseInt(strReply);
		if(num01*num02!=reply){
			isNotCorrect=true;
			// 입력한 값이 정답이 아닌 경우 JS에 보낼 변수 지정
		} else {
			response.sendRedirect("a11_main.jsp");
			// 입력한 값이 정답일 경우 특정한 페이지로 이동 처리
		}
	}
%>

	<h2>구구단 문제</h2>
	<form method="post">
	
	<input name="num01" value="<%=strNum01 %>" size="2">
	X
	<input name="num02" value="<%=strNum02 %>" size="2">
	= <input name="reply" size="2"> <br>
	<input type="submit" value="입력완료!">
	
	</form>

</body>

<script type="text/javascript">
	var isNotCorrect = <%=isNotCorrect%>
	if(isNotCorrect){
		alert("땡! 다시 시도!");
	}
</script>
</html>