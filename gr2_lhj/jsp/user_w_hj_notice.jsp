<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,java.sql.*,zental.gr2_lhj.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="../css/notice.css">
</head>
<body>
<%
	String pageNumStr=request.getParameter("page");
	pageNumStr=(pageNumStr==null)? "1" : pageNumStr;
	int pageNum = Integer.parseInt(pageNumStr);
	int totalPage=0;
	
	NoticeLoader loader=new NoticeLoader();
	
	loader.getConnection(pageNum);
	ArrayList<Notice> list=loader.getNotice();
	totalPage=loader.getTotal();
	
%>
    <div class="notice_area">
        <div class="wrap">
            <nav>
                <ul>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="user_w_hj_faq.jsp">FAQ및이용가이드</a></li>
                    <li><a href="user_w_hj_qna.jsp">Q&A(1:1문의)</a></li>
                </ul>
            </nav>
            <main>
                <ul class="notice_contents">
                	<% for(Notice li:list){%>
                    <li>
                        <article class="detail_off">
                            <button>
                                <div>
                                    <h1><%=li.getTitle() %></h1>
                                    <time><%=li.getDate() %></time>
                                </div>
                                <i></i>
                            </button>
                            <p><%=li.getContent() %></p>
                        </article>
                    </li>
                    <%} %>
                    
                </ul>
                <ul class="page_nation">
                <%if(totalPage%10==0){
                	totalPage/=10;
                	} else {
                	totalPage=totalPage/10+1;
                	}
                	for(int i=0; i<totalPage; i++){%>
                    <li><a href="?page=<%=i+1 %>" ><%=i+1 %></a></li>
                    <%} %>
                </ul>

            </main>
        </div>
    </div>
    <script src="../js/notice.js"></script>
</body>
</html>