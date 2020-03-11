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
    <link rel="stylesheet" href="../css/findingid.css">
</head>
<body>
    <div class="finding">
           <p class="form form__title">아이디 찾기</p>
            <form> 
            <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-email@2x.png" alt=""><input class="form__username"  type="text" placeholder="이름"><br><hr>
            <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-email@2x.png" alt=""><input class="form__address"  type="text" placeholder="이메일"><br><hr>
            <input class="submit" type="submit" value="아이디 찾기" onclick="location.href='../findingidSecond.html'">    
            </form>
    </div>
    <script src="../js/findingid.js"></script>
</body>
</html>