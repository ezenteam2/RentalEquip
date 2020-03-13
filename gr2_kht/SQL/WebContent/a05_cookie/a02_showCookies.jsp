<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    import="java.net.URLDecoder"
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

	<h2>쿠키 값 확인(클라이언트 -> 서버)</h2>
	<h3>넘겨온 값 : <%=request.getParameter("num") %></h3>
	
	<%
	
	Cookie [] cookies = request.getCookies();
	
	//JSESSIONID ==>> DEFAULT 값
	// cookie는 client에 저장되어 있으므로, 서버가 재시작하더라도 해당 내용을 확인할 수 있음 (session과 scope의 차이)
	
	
	// ex) 장바ㅜㄱ니 담기
	// 구매할 물건명 [  ]
	// 갯수[  ]
	// [장바구니 담기]	==> 쿠키로 담기 처리(영문으로)
	// [장바구니 확인]	==> 현재 쿠로 리스트 확인
			
			
			
	for(Cookie ck : cookies){
	%>

		<h4><%=ck.getName() %> - <%=ck.getValue() %></h4>
	
	<%-- 출력 뒤 쿠키값 삭제
		setMaxAge - 쿠키의 생존기간
			0 - 바로 삭제처리
	--%>
	
	<%
	
		ck.setMaxAge(0);
		response.addCookie(ck);
	
	}	
	%>

</body>




<script type="text/javascript">

</script>

</html>