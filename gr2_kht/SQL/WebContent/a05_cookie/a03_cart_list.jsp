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
<body>

	<h2>장바구니 담기</h2>
	<form method="post">
	구매할 물건명 : <input type="text" name="pname"/><br>
	물건 갯수 : <input type="text" name = "pcnt"/><br>
	<input type="submit" value="장바구니담기"/><br>
	<input type="button" value="장바구니 확인" id="cart"/><br>
	</form>
	
	<%
	String pname=request.getParameter("pname");
	String pcnt=request.getParameter("pcnt");
	
	if(pname!=null){
		response.addCookie(new Cookie(pname,pcnt));
	}
	
	%>

</body>




<script type="text/javascript">

	var cart = document.querySelector("#cart");
	cart.onclick=function(){
		location.href="a04_cart.jsp";
	}
	

</script>

</html>