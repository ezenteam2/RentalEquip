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
			<th onClick="go(2)" style="background-color:#FFE3EE;">식품</th>
			<th onClick="go(3)">의류</th>
			<th onClick="go(4)">장바구니</th>
		</tr>
	
	</table>
	
	<form method="post">
	
	<table border>
	
		<tr>
			<th>종류</th>
			<th>물건</th>
			<th>가격</th>
			<th>갯수</th>
		</tr>
		
		<tr>
			<td><input name="kind" size="3" value="전자"></td>
			<td><input name="product" size="3" value=""></td>
			<td><input name="price" size="3" value="0"></td>
			<td><input name="cnt" size="3" value="0"></td>
		</tr>
		
		<tr>
			<td colspan="4">
				<input type="button" value="장바구니 담기" id="addCart"/>
				<input type="button" value="장바구니 보기" onclick="go(4)"/>
			</td>			
		</tr>		
	
	</table>
	
	</form>

	<%
	String kind = request.getParameter("kind");
	String name = request.getParameter("name");
	String priceS = request.getParameter("price");
	String cntS = request.getParameter("cnt");
	
	if(kind==null) kind="";
	if(name==null) name="";
	int price = 0; if(priceS!=null) price=Integer.parseInt(priceS);
	int cnt = 0; if(cntS!=null) cnt=Integer.parseInt(cntS);
	
	if(!kind.equals("")){					// session값이 있을 때와 없을 때를 구분하여 처리
		ArrayList<Product> cartList=null;
		if(session.getAttribute("cartList")!=null) {
			cartList = (ArrayList<Product>)session.getAttribute("cartList");
		} else {
			cartList = new ArrayList<Product>();
		}
	
	
	cartList.add(new Product(kind,name,price,cnt));
	session.setAttribute("cartList",cartList);
	// 카트에 추가 처리
	}
	%>

</body>




<script type="text/javascript">

	function go(num){
		location.href="0313_9_buy0"+num+".jsp";
	}
	
	var addCart = document.querySelector("#addCart");
	addCart.onclick = function() {
		document.querySelector("form").submit();
	}


</script>

</html>