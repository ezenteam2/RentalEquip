<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="admin_CSS.css">
<style>



</style>

<title>Insert title here</title>
</head>
<body>

	<div class="adminTitle">카테고리 관리</div>

	<div class="adminTable">

	<div class="adminTableTH">
	
		<div class="adminTableTH1">등록날짜</div>
		<div class="adminTableTH2">순서</div>
		<div class="adminTableTH3">이미지 이름</div>
		<div class="adminTableTH4">카테고리 이름</div>
		<div class="adminTableTH5">삭제</div>
		<div class="adminTableTH6">이동</div>
	
	</div>

<%
	AdminCategory a1 = new AdminCategory();
%>

<% for (AdminCategoryVO a:a1.getAdminCategory()){ %>
	
	<div class="adminTableTD">
	
	
		<div class="adminTableTD1"><%=a.getCate_date() %></div>
		<div class="adminTableTD2"><%=a.getCate_order() %></div>
		<div class="adminTableTD3"><%=a.getCate_img() %></div>
		<div class="adminTableTD4"><%=a.getCate_title() %></div>
		<div class="adminTableTD5"><input type="button" class="adminDeleteBtn" value="삭제"/></div>
		<div class="adminTableTD6"><img src="image/mainIndexCategoryMenuIcon.png" class="adminMoveImg"/></div>
	
	</div>
	
	<%}%>
	
	</div>



	<div class="adminSubmit">
	<input type="submit" value="완료" class="adminDeleteBtn"/>	
	</div>	
	
	
	
	<div class="adminBannerRegi">
	
		<div class="adminRegiTitle">카테고리 등록</div>
		<div class="adminRegiImg"><div class="adminRegiImgTitle">이미지 등록</div><div style="display:inline-block;"><input type="file" class="adminRegiLinkInput"/></div></div>
		<div class="adminRegiLink"><div class="adminRegiImgTitle">카테고리 이름</div><div style="display:inline-block;"><input type="text" class="adminRegiLinkInput"/></div></div>
		<div class="adminRegiBtnContainer"><input type="submit" class="adminRegiBtn" value="등록"/></div>

	</div>

</body>

<script type="text/javascript">



</script>

</html>