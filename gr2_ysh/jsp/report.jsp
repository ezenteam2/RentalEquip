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
	A01_Database db = new A01_Database();
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
		<th>신고자 ID</th>
		<th>아이템코드</th>
		<th>신고일시</th>
		<th>신고분류</th>
		<th>내용보기</th>
		<th>처리상태</th>
		</tr>
	<%
	for(Report r:db.getReport()){
	%>	
	<tr>
		<td><input type="checkbox"></td>
		<td><%=r.getMem_id() %></td>	
		<td><%=r.getRent_item_code() %></td>	
		<td><%=r.getReport_date() %></td>	
		<td><%=r.getReport_cate() %></td>	
		<td><%=r.getReport_reason() %></td>	
		<td class="table__state table--deco"><%=r.getReport_curr() %></td>	
		</tr>	
	<%}%>

</table>
</body>
</html>