<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/user_w_kb_EmoneyDetail.css">
</head>
<body>
    <main>
        <div id="kb_title">
            <h2>E머니 내역 조회</h2>
        </div>
        <h3> E머니 내역</h3>
        <table border style="border-collapse: collapse;">
            <thead>
                <tr>
                    <th>충전한 E머니</th>
                    <th>출금한 E머니</th>
                    <th>사용가능한 E머니</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>100,000원</td>
                    <td>10,000원</td>
                    <td>90,000원</td>
                </tr>
            </tbody>
        </table><br>

        <div id="Search_Basic_Btns_Div">
            <div class="Basic_menubar"><div class="Basic_menubar_text">전체내역조회</div></div>
            <div class="Basic_menubar"><div class="Basic_menubar_text">충전내역조회</div></div>
            <div class="Basic_menubar"><div class="Basic_menubar_text">출금내역조회</div></div>
        </div>
        <div id="Search_Date_Div">
            <button id="Today_Btns">당일 조회</button>&nbsp;
            <input type="date" id="Start_Date_Input">&nbsp;~&nbsp;
            <input type="date" id="End_Date_Input">
            <button id="Search_Btn">조회하기</button>
        </div>

        <table border style="border-collapse: collapse;">
            <thead>
                <tr>
                    <th>일시</th>
                    <th>구분</th>
                    <th>거래금액</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2020.03.05</td>
                    <td>충전</td>
                    <td>100,000</td>
                </tr>
                <tr>
                    <td>2020.03.09</td>
                    <td>출금</td>
                    <td>10,000</td>
                </tr>
                
            </tbody>
        </table>
    </main>
</body>
</html> 