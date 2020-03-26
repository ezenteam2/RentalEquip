<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,java.sql.*,zental.gr2_lhj.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ및이용가이드</title>
    <link rel="stylesheet" href="../css/faq.css">
</head>
<body>
<%
	FaqLoader loader=new FaqLoader();
	String pageStr = request.getParameter("page");
	pageStr=(pageStr==null)? "1":pageStr;
	int pageInt = Integer.parseInt(pageStr);
	ArrayList<Faq> list = loader.getList(pageInt);
%>
    <div class="guide_area">
        <div class="wrap">
            <nav>
                <ul>
                    <li><a href="user_w_hj_notice.jsp">공지사항</a></li>
                    <li><a href="#">FAQ및이용가이드</a></li>
                    <li><a href="user_w_hj_qna.jsp">Q&A(1:1문의)</a></li>
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
                        <%for(Faq li:list){%>
                        <li>
                    
                            <i style='background: url("<%=li.getImg() %>") no-repeat;
                            background-size: 92px 87px;'></i>
                            <div>
                                <h1><%=li.getTitle() %></h1>
                                <p><%=li.getDetail() %></p>
                            </div>
                        </li>
                        <%} %>
                    </ul>
                </div>
                
</body>
</html>