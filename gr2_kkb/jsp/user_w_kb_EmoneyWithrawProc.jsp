<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, zental.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String Price = request.getParameter("PriceHidden");
	String Bank = request.getParameter("Bank");
	String Account = request.getParameter("Bank_Account");
	Boolean isSuccess = false;
	String LoginId = (String)session.getAttribute("idkey");
	System.out.println("E머니 충전 id : " + LoginId);
	int price = 0;
	if(Price == null) price = 0;
	if(Bank == null) Bank = "";
	if(Account == null) Account = "";
	
	price = Integer.parseInt(Price);
	
	kb_EmoneyInsert emo = new kb_EmoneyInsert();
	if(Price != null && Bank !=null & Account !=null){
	emo.setEmo_cate("출금");
	emo.setBank(Bank);
	emo.setAccount(Account);
	emo.setPrice(price);
	
	kb_Database db = new kb_Database();
	db.InsertEmoney(emo, LoginId);
	isSuccess = true;
	System.out.println(isSuccess);
	
	%>
		<script>
			alert("출금되었습니다");
			document.location.href="user_w_kb_EmoneyWithdraw.jsp";
		</script>
	<% 
		
	}
  	
  %>
 