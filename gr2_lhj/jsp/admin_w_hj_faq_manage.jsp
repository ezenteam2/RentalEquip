<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,java.sql.*,zental.gr2_lhj.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/admin_sidebar.css">
    <link rel="stylesheet" href="../css/notice_manage.css">
    <title>FAQ 관리</title>
</head>
<body>
    <div class="menu--sub"></div>
    <div class = "menu">
        <div class = "menu__title">관리자 페이지</div>
        <div class = "menu__category">통계</div>
        <div class = "menu__category">회원 관리</div>
        <div class = "menu__category category__project">프로젝트 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
        <div class = "menu__inner--project">
            <p class = "menu__inner">등록 신청 프로젝트 관리</p>
            <p class = "menu__inner">프로젝트 현황 관리</p>
            <p class = "menu__inner">카테고리 관리</p>
            <p class = "menu__inner">신고 프로젝트 관리</p>
        </div>
        <div class = "menu__category">결제 관리</div>
        <div class = "menu__category category__community">커뮤니티 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
            <div class = "menu__inner--community">    
                <p class = "menu__inner" onclick="location.href='admin_w_hj_notice_manage.jsp'">공지사항 관리</p>
                <p class = "menu__inner" onclick="location.href='admin_w_hj_qna_manage.jsp'">Q&amp;A 관리</p>
                <p class = "menu__inner">FAQ 관리</p>
            </div>    
        <div class = "menu__category category__main">메인화면 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
            <div class = "menu__inner--main">
                <p class = "menu__inner" onCLick="location.href='managingprojects.html'">팝업 관리</p>
                <p class = "menu__inner" onCLick="location.href='managingslide.html'">슬라이드 배너 관리</p>
                <p class = "menu__inner" onCLick="location.href='managingprojects.html'">추천 프로젝트</p>
            </div>
    </div>
    <div class="admin-info">
        <img src="../img/menu.svg" class="admin-info__toggle">
        <img class="admin-info__profile" src="../img/account.svg" alt="">
        <p class="admin-info__admin-name">홍길동</p>
    </div>

    <!-- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- -->
    <div class="article">
    <p class="title">FAQ 관리</p>
    <%
    	//faq 목록 로딩(항상로딩), 상세정보 열람(클릭했을때), faq 등록, 삭제, 수정
		FaqLoader loader = new FaqLoader();
    	String pageStr=request.getParameter("page");
    	pageStr = (pageStr==null)? "1":pageStr;
    	int currentPage=Integer.parseInt(pageStr); 	
    	int totalPage=loader.getPageCnt();
    	ArrayList<Faq> list = loader.getList(currentPage);	
    %>
    <table>
        <tr><td>Code</td><td>제목</td><td>작성일</td><td>작성자</td></tr>
        <%for(Faq li:list){ %>
        <tr onclick="modalOn(<%=li.getCode()%>)"><td><%=li.getCode() %></td><td style="text-align:left; padding-left:15px"><%=li.getTitle() %></td><td><%=li.getDate() %></td><td><%=li.getAdId() %></td></tr>
        <%} %>
    </table>
    <div class="paging">
        <div class="paging__prev paging--btn">&lt;</div>
        <%for(int i=1; i<=totalPage; i++){ %>
        <div class="paging__1 paging--btn" onclick="movePage(<%=i%>)"><%=i %></div>
        <%} %>
        <div class="paging__next paging--btn">&gt;</div>
        <button onclick="popRegForm()" style="border:none; color:white; background-color:#999; margin-left:500px">등록하기</button>
    </div>
</div>

<%
	String type = request.getParameter("type");
	//상세정보열람 type=modal, code = 해당내용 faq_code , 클릭했을 때 모달창 ON
	if(type!=null&&type.equals("modal")){
		String codeStr = request.getParameter("code");
		int code = Integer.parseInt(codeStr);
		Faq f1=loader.getFaq(code);
		if(f1!=null){%>
<div id="modal_wrap" style="position:absolute; width:100%; height:100%; top:0; left:0; background-color:rgba(153,153,153,0.7);">
	<div style="padding:0px 30px 30px 30px; position:absolute; top:10%; left:25%; width:50%; background-color:white; color:black; ">
		<h4 style="border-bottom:solid 1px #eee;">code : <span style="color:#999;"><%=f1.getCode() %></span></h4>
		<h4 style="border-bottom:solid 1px #eee;">제목 : <span style="color:#999;"><%=f1.getTitle() %></span></h4>
		<h4>내용</h4>
		<p style="color:#999;" ><%=f1.getDetail() %></p>
		<hr style="color:#eee; height:1px;">
		<h4 style="border-bottom:solid 1px #eee;">작성일 : <span style="color:#999;"><%=f1.getDate() %></span></h4>
		<h4 style="border-bottom:solid 1px #eee;">작성자 : <span style="color:#999;"><%=f1.getAdId() %></span></h4>
		<form id="delete_form">
		<input type="hidden" name="type" value="del">
		<input type="hidden" name="code" value="<%=f1.getCode() %>">
		</form>
		<div><button style="border:none; width:70px; height: 30px; line-height:30px; color:snow; background-color:#999; margin:0 20px 0 0;"
		onclick="deleteSubmit()">삭제</button><button style="border:none; width:70px; height: 30px; line-height:30px; color:snow; background-color:#999; margin:0 20px 0 0;"
		onclick="updateSubmit(<%=f1.getCode()%>)">수정</button></div>
		<div onclick="closeModal()" style="cursor:pointer; border:solid 1px; line-height:20px; text-align:center; position:absolute; width:20px; height:20px; top:10px; right:10px;">X</div>
	</div>
</div>
<%}
}%>
<%
	//삭제 처리
	if(type!=null&&type.equals("del")){
		String codeStr = request.getParameter("code");
		int code = Integer.parseInt(codeStr);
		loader.deleteFaq(code);
	}
%>

</body>

<script>
	function movePage(num){
		window.location=window.location.pathname+'?page='+num;
	}
	
	function closeModal(){
		location.href=location.pathname+'?page='+<%=currentPage%>;
	}
	
	function modalOn(code){
		location.href=location.pathname+'?page='+<%=currentPage%>+'&type=modal&code='+code;
	}
	
	function popRegForm(){
		var url = 'admin_w_hj_faq_reg_upt.jsp?type=reg';
		var name= 'FAQ등록하기';
		var option = "width = 500, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
	
	function deleteSubmit(){
		var delForm = document.querySelector('#delete_form');
		if(confirm('해당 FAQ을 삭제하시겠습니까?')){
			delForm.submit();
		}
	}
	
	function updateSubmit(code){
		var url = 'admin_w_hj_faq_reg_upt.jsp?type=upt&code='+code;
		var name= 'FAQ수정';
		var option = "width = 500, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
	
	window.onload=function(){
		var type = '<%=type%>';
		if(type==='del'){
			alert('삭제가 완료되었습니다.');
			window.location=window.location.pathname;
		}
	}
</script>
<script src = "../js/admin_sidebar.js"></script>
</html>