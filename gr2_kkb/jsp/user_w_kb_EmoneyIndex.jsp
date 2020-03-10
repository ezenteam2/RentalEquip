<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/EmoneyIndex.css">
   
</head>
<body>
    <main>
        <div id="Main_Div">
            <div id="Side_Menu_Div">
               <ul>
                    <li><div class="li_text" onclick="moveCharge()">E머니 충전</div></li>
                    <li><div class="li_text" onclick="moveWithraw()">E머니 출금</div></li>
                    <li><div class="li_text" onclick="moveDetail()">E머니 내역</div></li>
                    
               </ul>
            </div>
            <div id="Content_Div">
                <iframe src="user_w_kb_EmoneyCharge.jsp"></iframe>
            </div>
        </div>
    </main>
    <script>
        function moveCharge(){
            document.querySelector("iframe").src = "user_w_kb_EmoneyCharge.jsp";
        }

        function moveWithraw(){
            document.querySelector("iframe").src="user_w_kb_EmoneyWithdraw.jsp";
        }

        function moveDetail(){
            document.querySelector("iframe").src="user_w_kb_EmoneyDetail.jsp";
        }
    </script>
</body>
</html>