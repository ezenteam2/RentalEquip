<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    import="java.net.URLDecoder"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>쿠키 값 확인(client-->server)</h2>
<h3>넘겨온 값:<%=request.getParameter("num") %></h3>
<% 
Cookie[] cookies = request.getCookies();
// JSESSIONID는 default 값..
// cookie는 client에 저장되어 있으므로, 서버가 재시작하더라도
// 해당 내용을 확인할 수 있다. 이것이 session scope와의 차이
// 이다. 

// ex) 장바구니 담기.
//  구매할 물건명 [   ]
//   갯수 [   ]
//   [장바구니담기] ==> 쿠키로 담기 처리.(영문으로만)
//   [장바구니확인] ==> 현재 쿠키로 담기 내용 리스트 확인
for(Cookie ck : cookies){
%>
	<h4><%=ck.getDomain()%> - 
	
		<%=URLDecoder.decode(ck.getName(),"utf-8")%> - 
		<%=URLDecoder.decode(ck.getValue(),"utf-8") %></h4>
<%-- 출력한 뒤 쿠키값의 삭제 
	setMaxAge 쿠키의 생존기간을 지정 0으로 하면 바로 삭제 처리. 
--%>
<%
	ck.setMaxAge(0);
	response.addCookie(ck); // 클라이언트에 전달
}%>
</body>
</html>


