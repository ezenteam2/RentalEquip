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
    <title>ZENTAL-사지말고 빌리세요</title>
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
    <div class="login">
        <div class="login__title">
            <img class="title__logo" src="../../LOGO01.png" alt="">
            <p class="title__main">ZENTAL로 렌탈거래 시작하기</p>
            <p class="title__sub">15초만에 간편하게 가입하고<br>상품을 확인하세요!</p>
        </div>
        <form class="login__form" action="">
            <input class="login__id" type="text" placeholder="아이디"><br>
            <input class="login__pass" type="password" placeholder="비밀번호"><br>
            <input class="login__submit" type="submit" value="ZENTAL 이용하기" onclick="location.href='../gr2_kht/user_w_ht_mainIndex.jsp'">
            <hr>
            <button class="login__naver"><img class="login__naver--img"src="./img/naver.png"><p class="login__naver--text">네이버로 이용하기</p></button><br>
            <button class="login__kakao"><img class="login__kakao--img"src="https://assets.bunjang.co.kr/bunny_desktop/images/icon-sns-kakao-signup-dialog@2x.png"><p class="login__kakao--text">카카오로 이용하기</p></button><br>
            
        </form>
        <a class="finding finding__id"href="./findingid.html">아이디 </a><p class="finding"> / </p><a class="finding finding__pass" href="./findingpass.html"> 비밀번호 찾기</a>
        <br>
    </div>
    <div class="signup--box">
    <p class="signup signup__question">아직계정이 없으세요? &nbsp;</p><a class="signup signup__question--btn" href="./signup.html">회원가입하기</a>
    </div>
    <script src="../js/login.js"></script>
</body>
</html>