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

table{
	border-collapse:collapse;
	border:solid 3px;
	}

</style>

<title>Insert title here</title>
</head>
<body>

	<table>
	
		<tr>
			<th onClick="go(1)">전자</th>
			<th onClick="go(2)">식품</th>
			<th onClick="go(3)">의류</th>
			<th onClick="go(4)" style="background-color:#FFE3EE;">장바구니</th>
		</tr>
	
	</table>
	
	<%
		ArrayList<Product> cartList=new ArrayList<Product>();
		if(session.getAttribute("cartList")!=null){
			cartList = (ArrayList<Product>)session.getAttribute("cartList");
		}
	%>

	<table border>
	
		<tr>
			<th>선택</th>
			<th>종류</th>
			<th>물건</th>
			<th>가격</th>
			<th>갯수</th>
		</tr>
	
	<%
	for(int idx=0;idx<cartList.size();idx++){
		Product prod=cartList.get(idx);
	%>
	
		<tr>
			<td><input type="checkbox" name="chk" size="3" value=<%= %>"/></td>
			<td><input name="kind" size="3" value="전자"></td>
			<td><input name="product" size="3" value=""></td>
			<td><input name="price" size="3" value="0"></td>
			<td><input name="cnt" size="3" value="0"></td>
		</tr>
		
		<tr>
	
	<%} %>
	
	<tr><td colspan="4">
		<input type="button" vlaue="장바구니삭제"/>
		<input type="button" value="결재하기"/>
	</td></tr>
	
	</table>
	

</body>




<script type="text/javascript">

	function go(num){
		location.href="0313_9_buy0"+num+".jsp";
	}

</script>

</html>