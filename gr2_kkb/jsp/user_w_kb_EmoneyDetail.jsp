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
            <h2>E�Ӵ� ���� ��ȸ</h2>
        </div>
        <h3> E�Ӵ� ����</h3>
        <table border style="border-collapse: collapse;">
            <thead>
                <tr>
                    <th>������ E�Ӵ�</th>
                    <th>����� E�Ӵ�</th>
                    <th>��밡���� E�Ӵ�</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>100,000��</td>
                    <td>10,000��</td>
                    <td>90,000��</td>
                </tr>
            </tbody>
        </table><br>

        <div id="Search_Basic_Btns_Div">
            <div class="Basic_menubar"><div class="Basic_menubar_text">��ü������ȸ</div></div>
            <div class="Basic_menubar"><div class="Basic_menubar_text">����������ȸ</div></div>
            <div class="Basic_menubar"><div class="Basic_menubar_text">��ݳ�����ȸ</div></div>
        </div>
        <div id="Search_Date_Div">
            <button id="Today_Btns">���� ��ȸ</button>&nbsp;
            <input type="date" id="Start_Date_Input">&nbsp;~&nbsp;
            <input type="date" id="End_Date_Input">
            <button id="Search_Btn">��ȸ�ϱ�</button>
        </div>

        <table border style="border-collapse: collapse;">
            <thead>
                <tr>
                    <th>�Ͻ�</th>
                    <th>����</th>
                    <th>�ŷ��ݾ�</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2020.03.05</td>
                    <td>����</td>
                    <td>100,000</td>
                </tr>
                <tr>
                    <td>2020.03.09</td>
                    <td>���</td>
                    <td>10,000</td>
                </tr>
                
            </tbody>
        </table>
    </main>
</body>
</html> 