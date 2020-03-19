<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,ZENTAL.z01_vo.*"
    import="ZENTAL.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# database 불러와서 화면에 출력..
 --%>
<%
	Userinfo_db db = new Userinfo_db();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
<h2>사원 리스트</h2>
<table>
	<tr>
		<th><input type="checkbox"></th>
		<th>아이디</th>
		<th>이름</th>
		<th>상품목록</th>
		<th>등급</th>
		<th>상태</th>
		<th>쿠폰</th>
		</tr>
	<%
	for(Userinfo r:db.getUserinfo()){
	%>	
	<tr>
		<td><input type="checkbox"></td>
		<td class="table__userid"><%=r.getMem_id() %></td>	
		<td class="table__username"><%=r.getMem_name() %></td>	
		<td class="table__itemlist">상품목록</td>	
		<td class="table__ranking"><%=r.getMem_grade() %></td>	
		<td class="table__state"><%=r.getMem_curr() %></td>	
		<td class="table__coupon">쿠폰</td>	
		</tr>	
	<%}%>

</table>
</body>
</html>