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
<title>Insert title here</title>
</head>
<body>

<%--
6. 장바구니에 list한 물건 중에, check한 목록만 최종 결제 할려고
한다. 요청 객체를 이용하여 처리하세요.
   장바구니
[] 물건명
[] 사과
[] 바나나
[] 딸기
[최종결재목록] ==> 클릭시,
  결재목록
  ###
  ###
 --%>

<%
	ArrayList<String> clist = new ArrayList<String>();
	clist.add("사과");
	clist.add("망고");
	clist.add("리치");
%>

	<h2>장바구니</h2>
	<form method="post" action="z03_0310_6_cart.jsp">
	<input type="checkbox">물건명<br>
	------------------<br>
	<input type="checkbox" name="ckProd" value="사과">사과<br>
	<input type="checkbox" name="ckProd" value="망고">망고<br>
	<input type="checkbox" name="ckProd" value="리치">리치<br>
	<input type="checkbox" name="ckProd" value="수박">수박<br>
	<input type="submit" value="결제하기">
	</form>

</body>
</html>