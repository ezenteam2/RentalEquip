<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/EmoneyDetailInclude.css">
</head>
<body>
	<table border style="border-collapse: collapse;">
            <thead>
                <tr>
                    <th>일시</th>
                    <th>구분</th>
                    <th>거래금액</th>
                </tr>
            </thead>
	<%
	DecimalFormat df = new DecimalFormat("###,###");
	Connection conn=null;
  	String driver = "oracle.jdbc.driver.OracleDriver";
  	String url = "jdbc:oracle:thin:@192.168.4.90:1521:XE";
  	String Divide = request.getParameter("Divide");
	String TheDay = request.getParameter("TheDay");
	String StartDay = request.getParameter("StartDay");
	String EndDay = request.getParameter("EndDay");
	
	
	if(StartDay == null) StartDay="";
	if(EndDay == null) EndDay = "";
	System.out.println("구분 :" + Divide);
	System.out.println("당일 :" + TheDay);
	System.out.println("시작 :" + StartDay);
	System.out.println("끝 :" + EndDay);

  	PreparedStatement pstmt = null;

  	ResultSet rs = null;
  	 String Query = null;
  	try{
  		 Class.forName(driver);
    	 conn=DriverManager.getConnection(url,"scott","tiger");
    	
    	 if(Divide.equals("all") && TheDay.equals("true")){
    	 Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    			 +" where mem_id='userezenkb77' and to_date(emo_date, 'YYYY-MM-DD')"
    			 + "= to_date(sysdate, 'YYYY-MM-DD')";
		 pstmt = conn.prepareStatement(Query);
    	 rs = pstmt.executeQuery();
 		
    	 } else if(Divide.equals("all") && TheDay.equals("false")){
    		 Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    				 + " where mem_id='userezenkb77' and emo_date between to_date(?, 'YYYY-MM-DD') and "
    				 + "to_date(?, 'YYYY-MM-DD')";
    		 pstmt = conn.prepareStatement(Query);
    		 pstmt.setString(1, StartDay);
    		 pstmt.setString(2, EndDay);
        	 rs = pstmt.executeQuery();
    	 } else if(Divide.equals("Charge") && TheDay.equals("true")){
    		 Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
        			 +" where mem_id='userezenkb77' and to_date(emo_date, 'YYYY-MM-DD')"
        			 + "= to_date(sysdate, 'YYYY-MM-DD') and emo_cate='충전'";
    		 pstmt = conn.prepareStatement(Query);
        	 rs = pstmt.executeQuery();
    	 } else if(Divide.equals("Charge") && TheDay.equals("false")){
    		 Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    				 + " where mem_id='userezenkb77' and emo_date between to_date(?, 'YYYY-MM-DD') and "
    				 + "to_date(?, 'YYYY-MM-DD') and emo_cate='충전'";
    		 pstmt = conn.prepareStatement(Query);
    		 pstmt.setString(1, StartDay);
    		 pstmt.setString(2, EndDay);
        	 rs = pstmt.executeQuery();
    	 } else if(Divide.equals("Withraw") && TheDay.equals("true")){
    		 Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
        			 +" where mem_id='userezenkb77' and to_date(emo_date, 'YYYY-MM-DD')"
        			 + "= to_date(sysdate, 'YYYY-MM-DD') and emo_cate='출금'";
    		 pstmt = conn.prepareStatement(Query);
        	 rs = pstmt.executeQuery();
    	 } else if(Divide.equals("Withraw") && TheDay.equals("false")){
    		 Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    				 + " where mem_id='userezenkb77' and emo_date between to_date(?, 'YYYY-MM-DD') and "
    				 + "to_date(?, 'YYYY-MM-DD') and emo_cate='출금'";
    		 pstmt = conn.prepareStatement(Query);
    		 pstmt.setString(1, StartDay);
    		 pstmt.setString(2, EndDay);
        	 rs = pstmt.executeQuery();
		
    	 }
  
	%>
	
            <tbody>
            <%  while(rs.next()){
            		String date = rs.getString(1);
            		String cate = rs.getString(2);
            		String Price = df.format(rs.getInt(3));
            %>
                <tr>
                    <td><%=date %></td>
                    <td><%= cate%></td>
                    <td><%=Price %>원</td>
                </tr>
               
                
             <%
            	}
            		rs.close();
            		pstmt.close();
            		conn.close();
				} catch(Exception e){
			  		e.printStackTrace();
			  	}
             %>   
            </tbody>
        </table>
		
</body>
</html>