<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
String path = request.getContextPath(); %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/userinfo.css">
    <link rel="stylesheet" href="../css/index.css">
    <title>Document</title>
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
        <div class = "menu__category">회원 관리</div>
        <div class = "menu__category category__project">프로젝트 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
        <div class = "menu__inner--project">
            <p class = "menu__inner">등록 신청 프로젝트 관리</p>
            <p class = "menu__inner">프로젝트 현황 관리</p>
            <p class = "menu__inner">카테고리 관리</p>
            <p class = "menu__inner">신고 프로젝트 관리</p>
        </div>
        <div class = "menu__category">결제 관리</div>
        <div class = "menu__category category__community">커뮤니티 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
            <div class = "menu__inner--community">    
                <p class = "menu__inner">공지사항 관리</p>
                <p class = "menu__inner">Q&amp;A 관리</p>
                <p class = "menu__inner">FAQ 관리</p>
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
    <p class="title">회원 정보</p>
    <table>
        <tr><td><input type="checkbox"></td><td>아이디</td><td>이름</td><td>상품목록</td><td>등급</td><td>상태</td><td>쿠폰</td></tr>
        <tr><td><input type="checkbox"></td><td class="table__userid">wnsqja6545</td><td class="table__username">최준범</td><td class="table__itemlist">15개</td><td class="table__ranking">골드</td><td class="table__state">정지</td><td class="table__coupon">사용/보유</td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
    </table>
    <div class="paging">
        <div class="paging__prev paging--btn">&lt;</div><div class="paging__1 paging--btn">1</div><div class="paging__2 paging--btn">2</div><div class="paging__3 paging--btn">3</div><div class="paging__4 paging--btn">4</div><div class="paging__5 paging--btn">5</div><div class="paging__next paging--btn">&gt;</div>
    </div>
</div>
</body>

<!-- 상품목록 -->
<div class="itemlist--modal">
    <div class="itemlist__content">
        <p class="itemlist__exit">X</p>
        <p class="itemlist__title">상품 목록</p>
        <input class="itemlist--radio itemlist--radio-first" type="radio" name="item">제공
        <input class="itemlist--radio"  type="radio"name="item">사용
        <table class="itemlist__content--table">
        <tr><td>상품명</td><td>글제목</td><td>거래상태</td></tr>
        <tr><td>공기청정기</td><td>미세먼지를 대비해 공기청..</td><td>대여가능</td></tr>
        <tr><td>공기청정기</td><td>미세먼지를 대비해 공기청..</td><td>대여가능</td></tr>
        <tr><td>공기청정기</td><td>미세먼지를 대비해 공기청..</td><td>대여가능</td></tr>
        </table>
    </div>
</div>

<!-- 쿠폰 -->
<div class="coupon--modal">
    <div class="coupon__content">
        <p class="coupon__exit">X</p>
        <p class="coupon__title">상품 목록</p>
        <input class="coupon--radio coupon--radio-first" type="radio" name="item">사용
        <input class="coupon--radio"  type="radio"name="item">보유
        <table class="coupon__content--table">
        <tr><td>쿠폰명</td><td>사용처</td><td>사용일시</td></tr>
        <tr><td>생일축하쿠폰</td><td>남성의류</td><td>2020-02-29</td></tr>
        <tr><td>생일축하쿠폰</td><td>남성의류</td><td>2020-02-29</td></tr>
        <tr><td>생일축하쿠폰</td><td>남성의류</td><td>2020-02-29</td></tr>
        </table>
    </div>
</div>

<!-- 등급 -->
<div class="ranking--modal">
    <div class="ranking__content">
        <p class="ranking__exit">X</p>
        <p class="ranking__title">등급 변경</p>
        <form action="">
        <select class="ranking__choice" name="ranking" id="">등급선택
            <option value="nomal">일반</option>
            <option value="silver">실버</option>
            <option value="gold">골드</option>
            <option value="vip">VIP</option>
            <option value="vvip">VVIP</option>
        </select>
        <br>
        <input type ="button" class="ranking__submit" value="수정">
    </form>
    </div>
</div>

<!-- 상태 -->
<div class="state--modal">
    <div class="state__content">
        <p class="state__exit">X</p>
        <p class="state__title">계정 상태 변경</p>
        <form action="">
        <select class="state__choice" name="state" id="">계정 상태
            <option value="nomal">정상</option>
            <option value="silver">3일 정지</option>
            <option value="gold">5일 정지</option>
            <option value="vip">영구 정지</option>
            <option value="vvip">탈퇴</option>
        </select>
        <br>
        <input type ="button" class="state__submit" value="수정">
    </form>
    </div>
</div>
<script src = "../js/index.js"></script>
<script src="../js/userinfo.js"></script>
</html>