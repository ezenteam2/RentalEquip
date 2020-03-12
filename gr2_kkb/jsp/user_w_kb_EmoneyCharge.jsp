<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/user_w_kb_EmoneyCharge.css">

    <script>
        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
    </script>
     <script src="http://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>
    <script>
          function clickPrice(num){
            var PriceComma = numberWithCommas(num);
            var input_Price=  document.querySelector("#Price_Span")
            input_Price.innerHTML=PriceComma;
            $("#Check_Input").prop("checked", false);
            console.log(PriceComma);
        }
        function inputPrice(e, obj){

            $("#Check_Input").prop("checked", true);

            if ($(obj).val() == "") {
                //$("#PAmt").val("0");
                $("#Price_Span").text("0");
            } else {
                //$("#PAmt").val($(obj).val());
                $("#Price_Span").text(numberWithCommas($(obj).val()));
            }
        }
    </script>
    <main>
        <div id="kb_title">
            <h2>E�Ӵ� ����</h2>
        </div>
        
        <h3>���� ���</h3>
        <div id="Bank_Btns">
            <div class="bank_menubar"><div class="bank_text">��ȭ��ǰ��</div></div>
            <div class="bank_menubar"><div class="bank_text">�����(�޴���)</div></div>
            <div class="bank_menubar"><div class="bank_text">������ü</div></div>
            <div class="bank_menubar"><div class="bank_text">�ſ�ī��</div></div>
            <div class="bank_menubar"><div class="bank_text">�������Ա�</div></div>
            <div class="bank_menubar"><div class="bank_text">������/����Ʈ</div></div>
        </div>
        <h3>���� �ݾ�</h3>
        <div id="Price_Btns">
            <div class="Price_menubar" onclick="clickPrice(10000)"><div class="Price_text">10,000��</div></div>
            <div class="Price_menubar" onclick="clickPrice(20000)"><div class="Price_text">20,000��</div></div>
            <div class="Price_menubar" onclick="clickPrice(30000)"><div class="Price_text">30,000��</div></div>
            <div class="Price_menubar" onclick="clickPrice(50000)"><div class="Price_text">50,000��</div></div>
            <div class="input_Price_Div">
                <div id="Price_radio_Div">
                    <input type="radio" value="true" id="Check_Input" name="Check_Input">&nbsp;���� �Է� 
                </div>
                <div id="input_Price_Div">
                    <input type="number" name="Price" id="input_price" onkeyup="inputPrice(event, this)" placeholder="���� �ݾ� �Է�">
                </div>
            </div>
        </div>
        <div id="Charge_Price_Text">
            <b>���� �ݾ� : </b>&nbsp;<span id="Price_Span">5,000</span>&nbsp;<b>��</b>&nbsp;&nbsp;&nbsp;
        </div>
        <div id="Charge_Btn_Div">
            <button id="Charge_Btn">�����ϱ�</button>
        </div>
    </main>
</body>
</html>