<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, ZENTAL.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String Price = request.getParameter("PriceHidden");
	String Bank = request.getParameter("Bank");
	String Account = request.getParameter("Bank_Account");
	
	int price = 0;
	if(Price == null) price = 0;
	if(Bank == null) Bank = "";
	if(Account == null) Account = "";
	
	price = Integer.parseInt(Price);
	
	kb_EmoneyInsert emo = new kb_EmoneyInsert();
	
	emo.setEmo_cate("출금");
	emo.setBank(Bank);
	emo.setAccount(Account);
	emo.setPrice(price);
	
	kb_Database db = new kb_Database();
	db.InsertEmoney(emo);
  	
  
   	response.sendRedirect("user_w_kb_EmoneyWithdraw.jsp");
  	
%>