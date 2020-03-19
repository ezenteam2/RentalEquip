<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.text.*,ZENTAL.*" %>
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
            <tbody>
	<%
		kb_Database db = new kb_Database();
		DecimalFormat df = new DecimalFormat("###,###");
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

	    	
	    	 if(Divide.equals("all") && TheDay.equals("true")){
	    	 String Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
	    			 +" where mem_id='userezenkb77' and to_date(emo_date, 'YYYY-MM-DD')"
	    			 + "= to_date(sysdate, 'YYYY-MM-DD')";
	%>
    	 
         <%
    	          	for(kb_Emoney emo : db.EmoneyList(Query)){
    	                  	 String Price = df.format(emo.getEmoney());
    	          %>
         <tr>
             <td><%=emo.getDate()%></td>
             <td><%=emo.getEmo_cate()%></td>
             <td><%=Price%></td>
         </tr>
    	 <%
    	 	}
    	 %>
    
		<%
    			} else if(Divide.equals("all") && TheDay.equals("false")){
    		    		 String Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    		    				 + " where mem_id='userezenkb77' and emo_date between to_date(?, 'YYYY-MM-DD') and "
    		    				 + "to_date(?, 'YYYY-MM-DD')";
    		%>
    				 
    				  <%
    				     				  	for(kb_Emoney emo : db.EmoneyListDate(Query, StartDay, EndDay)){
    				     				  	        	String Price = df.format(emo.getEmoney());
    				     				  %>
			         <tr>
			             <td><%=emo.getDate()%></td>
			             <td><%=emo.getEmo_cate()%></td>
			             <td><%=Price%></td>
			         </tr>
			    	 <%
			    	 	}
			    	 %>
    		 
    		 <%
    		     		 	
    		     		   } else if(Divide.equals("Charge") && TheDay.equals("true")){
    		     		     	String Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    		     		         			+" where mem_id='userezenkb77' and to_date(emo_date, 'YYYY-MM-DD')"
    		     		         			 + "= to_date(sysdate, 'YYYY-MM-DD') and emo_cate='충전'";
    		     		 %>
    		 
    		 <%
    		     		 	for(kb_Emoney emo : db.EmoneyList(Query)){
    		     		         	 String Price = df.format(emo.getEmoney());
    		     		 %>
	         <tr>
	             <td><%=emo.getDate()%></td>
	             <td><%=emo.getEmo_cate()%></td>
	             <td><%=Price%></td>
	         </tr>
	    	 <%
	    	 	}
	    	 %>
    	 <%
    	 	} else if(Divide.equals("Charge") && TheDay.equals("false")){
    	     		String Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    	     				 + " where mem_id='userezenkb77' and emo_date between to_date(?, 'YYYY-MM-DD') and "
    	     				 + "to_date(?, 'YYYY-MM-DD') and emo_cate='충전'";
    	 %>
    				  <%
    				  	for(kb_Emoney emo : db.EmoneyListDate(Query, StartDay, EndDay)){
    				  	        	String Price = df.format(emo.getEmoney());
    				  %>
			         <tr>
			             <td><%=emo.getDate()%></td>
			             <td><%=emo.getEmo_cate()%></td>
			             <td><%=Price%></td>
			         </tr>
			    	 <%
			    	 	}
			    	 %>
    		 
    		<%
    		     			} else if(Divide.equals("Withraw") && TheDay.equals("true")){
    		     		    		String Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    		     		        			 +" where mem_id='userezenkb77' and to_date(emo_date, 'YYYY-MM-DD')"
    		     		        			 + "= to_date(sysdate, 'YYYY-MM-DD') and emo_cate='출금'";
    		     		%>
    		  <%
    		  	for(kb_Emoney emo : db.EmoneyList(Query)){
    		          	 String Price = df.format(emo.getEmoney());
    		  %>
	         <tr>
	             <td><%=emo.getDate()%></td>
	             <td><%=emo.getEmo_cate()%></td>
	             <td><%=Price%></td>
	         </tr>
	    	 <%
	    	 	}
	    	 %>
    		 
    		 <%
    		     		 	} else if(Divide.equals("Withraw") && TheDay.equals("false")){
    		     		     		String Query = "select to_char(emo_date, 'YYYY-MM-DD'), emo_cate, emo_amount from p4emoney"
    		     		     				 + " where mem_id='userezenkb77' and emo_date between to_date(?, 'YYYY-MM-DD') and "
    		     		     				 + "to_date(?, 'YYYY-MM-DD') and emo_cate='출금'";
    		     		 %>
    		 
    		  <%
    		     		  	for(kb_Emoney emo : db.EmoneyListDate(Query, StartDay, EndDay)){
    		     		  	        	String Price = df.format(emo.getEmoney());
    		     		  %>
			         <tr>
			             <td><%=emo.getDate() %></td>
			             <td><%=emo.getEmo_cate() %></td>
			             <td><%=Price %></td>
			         </tr>
			    	 <%} %>
    		 
    		 <% 
		
    	 }
  
	%>

        </table>
		
</body>
</html>