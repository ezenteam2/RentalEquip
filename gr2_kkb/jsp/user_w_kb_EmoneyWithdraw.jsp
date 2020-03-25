<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.text.*,ZENTAL.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/user_w_kb_EMoneyWIthdraw.css">
    <script>
        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
    </script>
    <script
    src="http://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
    <script>
        function clickPrice(num){
          var PriceComma = numberWithCommas(num);
          var input_Price=  document.querySelector("#Price_Span")
          input_Price.innerHTML=PriceComma;
          console.log(PriceComma);
          $("#PriceHidden").val(num);
          $("#Check_Input").prop("checked", false);
      }

      function inputPrice(e, obj){

		$("#Check_Input").prop("checked", true);

		if ($(obj).val() == "") {
			$("#PriceHidden").val("0");
			$("#Price_Span").text("0");
		} else {
			$("#PriceHidden").val($(obj).val());
			$("#Price_Span").text(numberWithCommas($(obj).val()));
		}
      }

      

  </script>
  	<%
  		DecimalFormat df = new DecimalFormat("###,###");
  	  	  	kb_Database db = new kb_Database();
  	  	  	int Emoney;
  	  	  	String Price = null;
  	  	  	String Query = "select mem_emoney from p4member where mem_id='userezenkb77'";
  	  	  	for(kb_EmoneyPrice emo : db.EmoneyNow(Query)){
  	  	  		Emoney = emo.getEmoney();
  	  	  		 Price = df.format(Emoney);
  	  	  	}
  	%>
  	
    <main>
        <div id="kb_title">
            <h2>E머니 출금</h2>
        </div>
        
        <div id="Emoney_Balance_Div">
            <b>현재 잔액 : </b><span id="Balance_Span"><%=Price %></span>&nbsp;<b>원</b>
        </div>
        <div id="Price_Btns">
            <div class="Price_menubar" onclick="clickPrice(10000)"><div class="Price_text">10,000원</div></div>
            <div class="Price_menubar" onclick="clickPrice(20000)"><div class="Price_text">20,000원</div></div>
            <div class="Price_menubar" onclick="clickPrice(30000)"><div class="Price_text">30,000원</div></div>
            <div class="Price_menubar" onclick="clickPrice(50000)"><div class="Price_text">50,000원</div></div>
            <div class="input_Price_Div">
                <div id="Price_radio_Div">
                    <input type="radio" value="true" id="Check_Input" name="Check_Input">&nbsp;직접 입력 
                </div>
                <div id="input_Price_Div">
                    <input type="number" name="Price" id="input_price" onkeyup="inputPrice(event,this)" placeholder="충전 금액 입력">
                </div>
            </div>
        </div>
        <script>
        	
    </script>
        <form method="post" action="user_w_kb_EmoneyWithrawProc.jsp">
        <div id="Charge_Price_Text">
            <b>충전 금액 : </b>&nbsp;<span id="Price_Span">5,000</span>&nbsp;<b>원</b>&nbsp;&nbsp;&nbsp;
            <input type="hidden" id="PriceHidden" name="PriceHidden"> 
        </div>

        <h2>출금 계좌번호를 입력하세요</h2>
        <div id="Bank_Account_input_Div">
            <select name="Bank">
                <option></option>
                <option>우리은행</option>
                <option>신한은행</option>
                <option>국민은행</option>
                <option>농협</option>
                <option>하나은행</option>
                <option>IBK기업은행</option>
            </select>&nbsp;
            <input type="text" name="Bank_Account" id="input_Account" placeholder="계좌번호">
        </div>
        <div id="Withraw_Btn_Div">
            <button id="Withraw_Btn" onclick="submit()">출금하기</button>
        </div>
        </form>
    </main>
    
	
  
</body>
</html>