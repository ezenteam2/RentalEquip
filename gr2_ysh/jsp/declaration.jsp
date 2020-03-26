<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,zental.*"
    import="zental.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%> 

<%
	dbModule db = new dbModule();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/declaration.css">
    <link rel="stylesheet" href="../css/index.css">
    <title>관리자페이지</title>
</head>
<body>
    <!DOCTYPE html>
    
<html lang="en">
<head>
    <!-- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/managingprojects.css">
    <title>관리자페이지</title>
</head>
<body>
    <div class="menu--sub"></div>
    <div class = "menu">
        <div class = "menu__title">관리자 페이지</div>
        <div class = "menu__category">통계</div>
        <div class = "menu__category" onclick="location.href='userinfo.jsp'">회원 관리</div>
        <div class = "menu__category category__project">프로젝트 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
        <div class = "menu__inner--project">
            <p class = "menu__inner">등록 신청 프로젝트 관리</p>
            <p class = "menu__inner">프로젝트 현황 관리</p>
            <p class = "menu__inner">카테고리 관리</p>
            <p class = "menu__inner" onclick="location.href='declaration.jsp'">신고 프로젝트 관리</p>
        </div>
        <div class = "menu__category">결제 관리</div>
        <div class = "menu__category category__community">커뮤니티 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
            <div class = "menu__inner--community">    
                <p class = "menu__inner" onclick="location.href='../../gr2_lhj/jsp/admin_w_hj_notice_manage.jsp'">공지사항 관리</p>
                <p class = "menu__inner">Q&amp;A 관리</p>
                <p class = "menu__inner" onclick="location.href='../../gr2_lhj/jsp/admin_w_hj_faq_manage.jsp'">FAQ 관리</p>
            </div>    
        <div class = "menu__category category__main">메인화면 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
            <div class = "menu__inner--main">
                <p class = "menu__inner" onCLick="location.href='managingprojects.html'">팝업 관리</p>
                <p class = "menu__inner" onCLick="location.href='managingslide.html'">슬라이드 배너 관리</p>
                <p class = "menu__inner" onCLick="location.href='managingprojects.html'">추천 프로젝트</p>
            </div>
    </div>
    <div class="admin-info">
        <img src="../img/menu.svg" class="admin-info__toggle">
        <img class="admin-info__profile" src="../img/account.svg" alt="">
        <p class="admin-info__admin-name">홍길동</p>
    </div>

    <!-- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- -->
    <div class="article">
    <p class="title">신고 관리</p>
    
    <table>
        <tr>
		<th><input type="checkbox"></th>
		<th>신고분류</th>
		<th>신고자 ID</th>
		<th>내용보기</th>
		<th>처리상태</th>
		<th>신고일시</th>	
		</tr>
	<%
	for(Report r:db.getReport()){
	%>	
	<tr>
		<td><input type="checkbox"></td>
		<td><%=r.getREPORT_CATE() %></td>	
		<td><%=r.getMEM_ID() %></td>	
		<td>내용보기</td>
		<td class="table__state table--deco"><%=r.getREPORT_CURR() %></td>	
		<td><%=r.getREPORT_DATE() %></td>		
		</tr>	
	<%}%>
    </table>
    <div class="paging">
        <div class="paging__prev paging--btn">&lt;</div><div class="paging__1 paging--btn">1</div><div class="paging__2 paging--btn">2</div><div class="paging__3 paging--btn">3</div><div class="paging__4 paging--btn">4</div><div class="paging__5 paging--btn">5</div><div class="paging__next paging--btn">&gt;</div>
    </div>
</div>
</body>

<!-- 상태 -->
<div class="state--modal">
    <div class="state__content">
        <p class="state__exit">X</p>
        <p class="state__title">신고 처리 상태 변경</p>
        <form action="">
        <select class="state__choice" name="state" id="">신고 처리 상태
            <option value="nomal">처리중</option>
            <option value="silver">처리완료</option>
            <option value="gold">담당자 미정</option>
        </select>
        <br>
        <input type ="button" class="state__submit" value="저장">
    </form>
    </div>
</div>

<script src = "../js/index.js"></script>
<script src="../js/declaration.js"></script>
</html>