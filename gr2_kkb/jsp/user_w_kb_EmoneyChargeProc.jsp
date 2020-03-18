<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%

	request.setCharacterEncoding("UTF-8");
	String Price = request.getParameter("Prices");
	String Bank = request.getParameter("Bank");
	String Account = request.getParameter("Bank_Account");
	
	int price = 0;
	if(Price == null) price = 0;
	if(Bank == null) Bank = "";
	if(Account == null) Account = "";
	
	price = Integer.parseInt(Price);
	
	Connection conn=null;
  	String driver = "oracle.jdbc.driver.OracleDriver";
  	String url = "jdbc:oracle:thin:@192.168.4.90:1521:XE";
  		

  	PreparedStatement pstmt = null;
  	ResultSet rs = null;
  	ResultSet rs2 = null;
  	
  	try{
  		 Class.forName(driver);
   	    conn=DriverManager.getConnection(url,"scott","tiger");
   	    
   	    String Query ="Insert into p4emoney values(emo_code_seq.nextval,'userezenkb77','충전', ?, ?, ?, sysdate)";
   	    pstmt = conn.prepareStatement(Query);
   	    pstmt.setString(1, Bank);
   	    pstmt.setString(2, Account);
   	    pstmt.setInt(3, price);
   	    pstmt.executeUpdate();
   	    
   	    String Query2 = "update p4member set mem_emoney = mem_emoney + ? where mem_id='userezenkb77'";
   	    pstmt = conn.prepareStatement(Query2);
   	    pstmt.setInt(1, price);
   	    pstmt.executeUpdate();
   	    
   	    pstmt.close();
   	    conn.close();
   	    response.sendRedirect("user_w_kb_EmoneyCharge.jsp");
  	} catch(Exception e){
  		System.out.println(e);
  	}
%>