<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,my.List,java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="../css/공지사항.css">
</head>
<body>
<%
	Connection con=null;
	Statement stmt=null;
	ArrayList<List> list = new ArrayList<List>();
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.4.90:1521:xe",
				"scott", "tiger");
		if(con==null){
			throw new Exception("데이터베이스 연결 실패");
		}
		stmt=con.createStatement();
		
		ResultSet rs =stmt.
				executeQuery("select * from p4notice order by NOTICE_DATE DESC");
		
		while(rs.next()){
			String title=rs.getString("NOTICE_TITLE");
			String content=rs.getString("NOTICE_DETAIL");
			String img=rs.getString("NOTICE_IMG");
			String date=rs.getString("NOTICE_DATE");
			date=date.substring(0,10);
			List temp = new List(title,content, img, date);
			list.add(temp);
		}
	} catch(Exception e){
		e.printStackTrace();
	}
%>
    <div class="notice_area">
        <div class="wrap">
            <nav>
                <ul>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="FAQ및이용가이드.jsp">FAQ및이용가이드</a></li>
                    <li><a href="Q&A(1_1문의).jsp">Q&A(1:1문의)</a></li>
                </ul>
            </nav>
            <main>
                <ul class="notice_contents">
                	<%for(List li:list) {%>
                    <li>
                        <article class="detail_off">
                            <button>
                                <div>
                                    <h1><%=li.getTitle() %></h1>
                                    <time><%=li.getTime() %></time>
                                </div>
                                <i></i>
                            </button>
                            <p><%=li.getContent() %></p>
                        </article>
                    </li>
                    <%} %>
                    
                </ul>
            </main>
        </div>
    </div>
    <script src="../js/리스트클릭했을때.js"></script>
</body>
</html>