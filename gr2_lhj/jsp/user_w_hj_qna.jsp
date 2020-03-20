<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, zental.gr2_lhj.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Q&A(1:1문의)</title>
    <link rel="stylesheet" href="../css/qna.css">
</head>
<script type="text/javascript">
	
window.onload=function(){
	if(window.location.href.includes('?')){
		window.location=window.location.pathname;
	}
}
</script>
<%
	String title = request.getParameter("content");
	String cate=request.getParameter("cate");
	
	QnaLoader loader = new QnaLoader();
	ArrayList<Qna> list = loader.getQna();
	if(title!=null&&cate!=null){
		Qna q0=new Qna(cate, title, title);
		loader.insertQna(q0);
	}
	loader.closeConnection();
%>

<body>

    <div class="qna_area">
        <div class="wrap">
            <nav>
                <ul>
                    <li><a href="user_w_hj_notice.jsp">공지사항</a></li>
                    <li><a href="user_w_hj_faq.jsp">FAQ및이용가이드</a></li>
                    <li><a href="#">Q&A(1:1문의)</a></li>
                </ul>
            </nav>
            <main>
                <form method="get" class="reg_qna">
                    <div class="sel_cate">
                        <input type="checkbox" name="cate" id="cate_check">
                        <h1><span>카테고리를 선택해주세요</span><i></i></h1>
                        <div class="cate_li" hidden='true'>
                            <ul>
                                <li><input type="radio" name="cate" value="계정문의">계정문의</li>
                                <li><input type="radio" name="cate" value="차단/제재">차단/제재</li>
                                <li><input type="radio" name="cate" value="거래신고">거래신고</li>
                                <li><input type="radio" name="cate" value="서비스기능">서비스기능</li>
                                <li><input type="radio" name="cate" value="광고전문상점">광고전문상점</li>
                                <li><input type="radio" name="cate" value="서비스장애">서비스장애</li>
                                <li><input type="radio" name="cate" value="제안">제안</li>
                            </ul>
                        </div>
                    </div>
                    <textarea rows="20" name="content"></textarea>
                    <button type="submit">등록하기</button>
                </form>

                <h1>등록된 질문들</h1>
                <section class="qna_li">
                    <ul>
                    	<%for (Qna li:list){ %>
                        <li>
                            <input type="checkbox">
                            <div class="title">
                                <h1>[<%=li.getCategory()%>]<%=li.getTitle() %></h1>
                                <i>화살표아이콘</i>
                            </div>
                            <p><%=li.getContent() %></p>
                            <p>--답변--<br><%=li.getAnswer() %></p>
                        </li>
                        <%} %>
                    </ul>
                </section>
            </main>
        </div>
    </div>
    <script src="../js/qna.js"></script>
</body>
</html>