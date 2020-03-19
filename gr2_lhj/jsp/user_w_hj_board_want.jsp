<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,zental.gr2_lhj.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>빌리고싶은상품페이지</title>
    <link rel="stylesheet" href="../css/want_rental.css">
</head>
<body>
    <div class="wrap">
        <header>
            <ul class="cate_li">
                <li class="cate_el"><a href="?cate=0">전체보기</a><i>></i></li>
                <li class="cate_el"><a href="?cate=1">가전</a><i>+</i></li>
                <li class="cate_el"><a href="?cate=2">가구</a><i>+</i></li>
                <li class="cate_el"><a href="?cate=3">유아용품</a><i>+</i></li>
                <li class="cate_el"><a href="?cate=4">도서</a><i>+</i></li>
                <li class="cate_el"><a href="?cate=5">IT</a><i>+</i></li>
                <li class="cate_el"><a href="?cate=6">의류</a><i>+</i></li>
                <li class="cate_el"><a href="?cate=7">스포츠</a><i>+</i></li>
                <li class="cate_el"><a href="?cate=8">레저</a><i>+</i></li>
                <li class="cate_el"><a href="?cate=9">캠핑</a><i>+</i></li>
            </ul>
        </header>
        <main>
        <%
        	String cateStr = request.getParameter("cate");
        	int cateNum =(cateStr==null)? 0:Integer.parseInt(cateStr);
        	
        	WantLoader loader=new WantLoader();
	        loader.getConnection();
        	ArrayList<Want> list = loader.getWant(cateNum);
        	loader.closeConnection();
        %>
            <h1><span>사용자들</span>이 아래와 같은 상품을 빌리길 원합니다</h1>
            <section>
                <ul class="item_li">
                	<% for(Want li:list){ %>
                    <li class="item_el">
                        <img src="<%=li.getImg() %>" alt="상품이미지">
                        <a href="#"><%=li.getTitle() %></a>
                        <div class='price_area'>
                            <span class="price"><%=li.getPrice() %>원</span>
                            <span class="unit">하루</span>
                        </div>
                    </li>
                    <%} %>
                    
                </ul>
            </section>
        </main>
    </div>
</body>
</html>