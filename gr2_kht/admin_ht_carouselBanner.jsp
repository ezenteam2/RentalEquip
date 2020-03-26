<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.ArrayList,zental.gr2_kht.*"%>
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

<%
	AdminCarouselBanner c1 = new AdminCarouselBanner();
%>
	
<% for (CarouselBanner c:c1.getCarouselBanner()){ %>
		
	<div class="adminTableTD">

		<div class="adminTableTD1"><%=c.getCarou_date() %></div>
		<div class="adminTableTD2"><%=c.getCarou_order() %></div>
		<div class="adminTableTD3"><%=c.getCarou_img() %></div>
		<div class="adminTableTD4"><%=c.getCarou_link() %></div>
		<div class="adminTableTD5"><input type="button" class="adminDeleteBtn" value="삭제"/></div>
		<div class="adminTableTD6"><img src="image/mainIndexCategoryMenuIcon.png" class="adminMoveImg"/></div>
	
	
	</div>
	<%} %>
	
	
	</div>



	<div class="adminSubmit">
	<input type="submit" value="완료" class="adminDeleteBtn"/>	
	</div>	
	
	
	
	<div class="adminBannerRegi">
	
		<div class="adminRegiTitle">캐러셀 배너 등록</div>
		<div class="adminRegiImg"><div class="adminRegiImgTitle">이미지 등록</div><div style="display:inline-block;"><input type="file" class="adminRegiLinkInput"/></div></div>
		<div class="adminRegiLink"><div class="adminRegiImgTitle">링크 주소 입력</div><div style="display:inline-block;"><input type="text" class="adminRegiLinkInput"/></div></div>
		<div class="adminRegiBtnContainer"><input type="submit" class="adminRegiBtn" value="등록"/></div>

	</div>

</body>

<script type="text/javascript">



</script>

</html>