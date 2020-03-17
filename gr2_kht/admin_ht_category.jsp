<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


	
	<div class="adminTableTD">
	
	<%
	String cate [] = {"가전", "가구", "유아용품", "도서", "IT", "의류", "스포츠", "레저", "캠핑"};
	for (int idx02=0; idx02<cate.length; idx02++){ %>
	
		<div class="adminTableTD1">2020-03-05</div>
		<div class="adminTableTD2"><%=idx02+1 %></div>
		<div class="adminTableTD3">cateImg<%=idx02+300 %>.png</div>
		<div class="adminTableTD4"><%=cate[idx02] %></div>
		<div class="adminTableTD5"><input type="button" class="adminDeleteBtn" value="삭제"/></div>
		<div class="adminTableTD6"><img src="image/mainIndexCategoryMenuIcon.png" class="adminMoveImg"/></div>
	
	<%} %>
	
	</div>
	
	
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