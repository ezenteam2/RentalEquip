<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, ZENTAL.*" %>
<%

	request.setCharacterEncoding("UTF-8");
	String Price = request.getParameter("Prices");
	String Bank = request.getParameter("Bank");
	String Account = request.getParameter("Bank_Account");
	String emo_cate = "충전";
	Boolean isSuccess = false;
	
	int price = 0;
	if(Price == null) price = 0;
	if(Bank == null) Bank = "";
	if(Account == null) Account = "";
	
	price = Integer.parseInt(Price);
	
	kb_EmoneyInsert emo = new kb_EmoneyInsert();
	
	emo.setEmo_cate(emo_cate);
	emo.setBank(Bank);
	emo.setAccount(Account);
	emo.setPrice(price);
	
	kb_Database db = new kb_Database();
	db.InsertEmoney(emo);
  	isSuccess = true;
  	
  	%>
  	<script>
  		var isSuccess= <%=isSuccess%>;
  		if(isSuccess){
  			alert("충전되었습니다");
  		} else {
  			isSuccess("충전에 실패하였습니다");
  		}
  	</script>
  	<%
   	response.sendRedirect("user_w_kb_EmoneyCharge.jsp");
  	
%>