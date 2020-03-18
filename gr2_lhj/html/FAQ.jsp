<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,my.List,java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ및이용가이드</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/my/ZENTAL/gr2_lhj/css/FAQ및이용가이드.css">
</head>
<body>
<%
	Connection con=null;
	Statement stmt=null;
	ArrayList<List> list = new ArrayList<List>();
	System.out.println(request.getContextPath()+"/my/ZENTAL/gr2_lhj/css/FAQ및이용가이드.css");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.4.90:1521:xe",
				"scott", "tiger");
		if(con==null){
			throw new Exception("데이터베이스 연결 실패");
		}
		stmt=con.createStatement();
		
		ResultSet rs =stmt.
				executeQuery("select * from p4faq");
		if(!rs.next()){
			out.println("해당하는 정보가 없습니다.");
		} else {
			//rs.previous();
		}
		
		while(rs.next()){
			String title=rs.getString("FAQ_TITLE");
			String content=rs.getString("FAQ_DETAIL");
			String img=rs.getString("FAQ_IMG");
			img=img.substring(0,20)+"jpg";
			System.out.println(img);
			String date=rs.getString("FAQ_DATE");
			date=date.substring(0,10);
			List temp = new List(title,content, img, date);
			list.add(temp);
		}
	} catch(Exception e){
		e.printStackTrace();
	}
%>
    <div class="guide_area">
        <div class="wrap">
            <nav>
                <ul>
                    <li><a href="notice.jsp">공지사항</a></li>
                    <li><a href="#">FAQ및이용가이드</a></li>
                    <li><a href="Q&A(1_1).jsp">Q&A(1:1문의)</a></li>
                </ul>
            </nav>
            <main>
                <div class="guide_header">
                    <i>FAQ및이용가이드아이콘</i>
                    <h1><span>젠탈</span>은 모두가
                        <br>이용하는 열린공간입니다.</h1>
                    <p>공정한 거래문화를 위한 FAQ와 이용가이드는 다음과 같습니다.</p>
                </div>
                <div class="guide_content">
                    <ul>
                        <%for(List li:list){%>
                        <li>
                    
                            <i style='background: url("<%=li.getImg() %>") no-repeat;
                            background-size: 92px 87px;'></i>
                            <div>
                                <h1><%=li.getTitle() %></h1>
                                <p><%=li.getContent() %></p>
                            </div>
                        </li>
                        <%} %>
                    </ul>
                </div>
                
</body>
</html>