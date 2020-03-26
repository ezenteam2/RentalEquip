<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, java.text.*,zental.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="CSS/user_w_kb_EmoneyDetail.css">
    <script src="http://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
    </script>
</head>
<body>
	<%
			DecimalFormat df = new DecimalFormat("###,###");
			String LoginId = (String)session.getAttribute("idkey");
			System.out.println("E�Ӵ� ���� id : " + LoginId);
	  		 kb_Database db = new kb_Database();
	    	 String Query = "select emo_cate, sum(emo_amount) as cnt from p4emoney"
	    			 +" where mem_id=? and emo_cate ='����' group by emo_cate";
	    	 String Query2 = "select emo_cate, sum(emo_amount) as cnt from p4emoney"
	    			 +" where mem_id=? and  emo_cate='���' group by emo_cate";
	    	 String Query3 = "select mem_emoney from p4member where mem_id=?";
	    	 
	    	String Price = null;
	%>
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
                <%
                	for(kb_EmoneyPrice emo : db.ChargeAll(Query, LoginId)){
                                		Price = df.format(emo.getEmoney());
                %>
                	<td id="ChargePrice_Td"><%=Price%> ��</td>
                <%
                	} for(kb_EmoneyPrice emo: db.ChargeAll(Query2, LoginId)){
                                		 Price = df.format(emo.getEmoney());
                %>
                		<td id="ChargePrice_Td"><%=Price%> ��</td>
                <%
                	}
                                	for(kb_EmoneyPrice emo : db.EmoneyNow(Query3, LoginId)){
                                		 Price = df.format(emo.getEmoney());
                %>
                		 <td id="ChargePrice_Td"><%=Price %> ��</td>
                	<% 	 
                	}
                %>
                </tr>
            </tbody>
        </table><br>
		
    	<script>
    		function clickDivide(str){
    			$("#Divide").val(str);
    		}
    		
    		function checkTheDay(){
    			$("#TheDay").val("true");
    			submit();
    		}
    		
    		function SearchDate(){
    			$("#TheDay").val("false");
    			submit();
    		}
    	</script>
		<form>
        <div id="Search_Basic_Btns_Div">
            <div class="Basic_menubar" onclick=""><div class="Basic_menubar_text">��ü������ȸ</div></div>
            <div class="Basic_menubar" onclick="clickDivide('Charge')"><div class="Basic_menubar_text">����������ȸ</div></div>
            <div class="Basic_menubar" onclick="clickDivide('Withraw')"><div class="Basic_menubar_text">��ݳ�����ȸ</div></div>
            <input type="hidden" id="Divide" name="Divide" value="all">
        </div>
        <div id="Search_Date_Div">
            <button id="Today_Btns" onclick="checkTheDay()">���� ��ȸ</button>&nbsp;
            <input type="hidden" id="TheDay" name="TheDay" value="false">
            <input type="date" name="StartDay" id="Start_Date_Input">&nbsp;~&nbsp;
            <input type="date" name="EndDay" id="End_Date_Input">
            <button id="Search_Btn" onclick="SearchDate()">��ȸ�ϱ�</button>
        </div>
		</form>
		<%
			String Divide = request.getParameter("Divide");
			String TheDay = request.getParameter("TheDay");
			String StartDay = request.getParameter("StartDay");
			String EndDay = request.getParameter("EndDay");
		%>
        <jsp:include page="EmoneyDetail_Include.jsp">
        	<jsp:param name="Divide" value="<%=Divide %>"></jsp:param>
        	<jsp:param name="TheDay" value="<%=TheDay %>"></jsp:param>
        	<jsp:param name="StartDay" value="<%=StartDay %>"></jsp:param>
        	<jsp:param name="EndDay" value="<%=EndDay %>"></jsp:param>
        </jsp:include>
    </main>
</body>
</html> 