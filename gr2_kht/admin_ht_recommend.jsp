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

	<div class="adminTitle">추천상품 관리</div>

	<div class="adminTable">

	<div class="adminTableTH">
	
		<div class="adminTableTH1">등록날짜</div>
		<div class="adminTableTH2">순서</div>
		<div class="adminTableTH3">제공회원ID</div>
		<div class="adminTableTH4">타이틀</div>
		<div class="adminTableTH5">삭제</div>
		<div class="adminTableTH6">이동</div>
	
	</div>


	
	<div class="adminTableTD">
	
	<%
	String recommID [] = {"ezenHT", "ezenYS", "ezenSH", "ezenKB"};
	String recommTitle [] = {"스키복 빌려드림", "아할탛랕할나ㅏ알", "렌탈 전문업체 이이젠", "끝인걸 알지만 지금이대로"};
	for (int idx03=0; idx03<4; idx03++){
	%>
	
		<div class="adminTableTD1">2020-03-11</div>
		<div class="adminTableTD2"><%=idx03+1 %></div>
		<div class="adminTableTD3"><%=recommID[idx03] %></div>
		<div class="adminTableTD4"><%=recommTitle[idx03] %></div>
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