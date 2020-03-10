<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/user_w_kb_MyPageMain.css">
    <title>ZENTAL</title>
</head>
<body>
    <main>
        <table border style="border-collapse: collapse;">
            <tr>
                <th class="th">아이디</th>
                <td>EZENKB</td>
                <th  class="th">닉네임</th>
                <td>이젠KB</td>
            </tr>
            <tr>
                <th class="th">보유 포인트</th>
                <td colspan="3">100,000</td>
            </tr>
            <tr>
                <td colspan="4" class="grade_td">
                    <img src="image/VIP.png"><br>
                    이젠KB님은 현재 VIP등급입니다.
                </td>
            </tr>
            <tr>
                <td colspan="4" class="moveGrade_Td">
                    등급별 혜택 보기
                </td>
            </tr>
        </table>
        <div id="Btns_Div">
            <div class="menubar"  onclick="location.href='user_w_kb_MemberUpdate.jsp'"><div class="vertical_div">회원정보 수정</div></div>
            <div class="menubar" onclick="location.href='user_w_kb_EmoneyIndex.jsp'"><div class="vertical_div">E머니 충전 /<br>
            E머니 출금</div></div>
            <div class="menubar"><div class="vertical_div">쿠폰목록</div></div>
            <div class="menubar" ><div class="vertical_div">팔로우 회원</div></div>
            <div class="menubar"><div class="vertical_div">찜예약 상품</div></div>
            <div class="menubar"><div class="vertical_div">렌탈 상품 확인</div></div>
        </div>
    </main>
</body>
</html>