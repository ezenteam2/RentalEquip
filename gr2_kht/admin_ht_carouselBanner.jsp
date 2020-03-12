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

	<div class="adminTitle">캐러셀 배너 관리</div>

	<div class="adminTable">

	<div class="adminTableTH">
	
		<div class="adminTableTH1">등록날짜</div>
		<div class="adminTableTH2">순서</div>
		<div class="adminTableTH3">이미지이름</div>
		<div class="adminTableTH4">링크 주소</div>
		<div class="adminTableTH5">삭제</div>
		<div class="adminTableTH6">이동</div>
	
	</div>


	
	<div class="adminTableTD">
	
	<% for (int idx01=0; idx01<8; idx01++){ %>
	
		<div class="adminTableTD1">2020-03-05</div>
		<div class="adminTableTD2">1</div>
		<div class="adminTableTD3">carousel1.png</div>
		<div class="adminTableTD4">www.naver.com</div>
		<div class="adminTableTD5"><input type="button" class="adminDeleteBtn" value="삭제"/></div>
		<div class="adminTableTD6"><img src="image/mainIndexCategoryMenuIcon.png" class="adminMoveImg"/></div>
	
	<%} %>
	
	</div>
	
	
	</div>
	
	
	<div class="adminBannerRegi">
	
		<div class="adminRegiTitle"></div>
		<div class="adminRegiImg"></div>
		<div class="adminRegiLink"></div>
		<div class="adminRegiBtn"></div>

	</div>

</body>

<script type="text/javascript">



</script>

</html>