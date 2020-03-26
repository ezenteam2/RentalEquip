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
    <title>공지사항 관리</title>
</head>
<body>
    <div class="menu--sub"></div>
    <div class = "menu">
        <div class = "menu__title">관리자 페이지</div>
        <div class = "menu__category">통계</div>
        <div class = "menu__category" onclick="location.href='../../gr2_ysh/jsp/userinfo.jsp'">회원 관리</div>
        <div class = "menu__category category__project">프로젝트 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
        <div class = "menu__inner--project">
            <p class = "menu__inner">등록 신청 프로젝트 관리</p>
            <p class = "menu__inner">프로젝트 현황 관리</p>
            <p class = "menu__inner">카테고리 관리</p>
            <p class = "menu__inner" onclick="location.href='../../gr2_ysh/jsp/declaration.jsp'">신고 프로젝트 관리</p>
        </div>
        <div class = "menu__category">결제 관리</div>
        <div class = "menu__category category__community">커뮤니티 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
            <div class = "menu__inner--community">    
                <p class = "menu__inner">공지사항 관리</p>
                <p class = "menu__inner">Q&amp;A 관리</p>
                <p class = "menu__inner" onclick="location.href='admin_w_hj_faq_manage.jsp'">FAQ 관리</p>
            </div>    
        <div class = "menu__category category__main">메인화면 관리<img class="category--button" src="./img/bottom.svg" alt=""></div>
            <div class = "menu__inner--main">
                <p class = "menu__inner">팝업 관리</p>
                <p class = "menu__inner">슬라이드 배너 관리</p>
                <p class = "menu__inner">추천 프로젝트</p>
            </div>
    </div>
    <div class="admin-info">
        <img src="../img/menu.svg" class="admin-info__toggle">
        <img class="admin-info__profile" src="../img/account.svg" alt="">
        <p class="admin-info__admin-name">홍길동</p>
    </div>

    <!-- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- -->
    <div class="article">
    <p class="title">공지사항 관리</p>
    <%
    	String pageNumStr=request.getParameter("page");
    	pageNumStr=(pageNumStr==null)? "1" : pageNumStr;
    	int pageNum = Integer.parseInt(pageNumStr);
    	int totalPage=0;
    	
    	NoticeLoader loader=new NoticeLoader();
    	
    	loader.getConnection();
    	ArrayList<Notice> list=loader.getNotice(pageNum);
    	totalPage=loader.getTotal();
    %>
    <table>
        <tr><td>Code</td><td>제목</td><td>작성일</td><td>작성자</td></tr>
        <%for(Notice li:list){ %>
        <tr onclick="modalOn(<%=li.getCode()%>)"><td><%=li.getCode() %></td><td style="text-align:left; padding-left:15px"><%=li.getTitle() %></td><td><%=li.getDate() %></td><td><%=li.getAdmin() %></td></tr>
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
	String modal = request.getParameter("modal");
	String codeStr= request.getParameter("code");
	Notice no1=null;
	if(modal!=null&&modal.equals("on")){
		int code = Integer.parseInt(codeStr);
		no1=loader.getNoticeDet(code);
	}
if(no1!=null){%>
<div id="modal_wrap" style="position:absolute; width:100%; height:100%; top:0; left:0; background-color:rgba(153,153,153,0.7);">
	<div style="padding:0px 30px 30px 30px; position:absolute; top:10%; left:25%; width:50%; background-color:white; color:black; ">
		<h4 style="border-bottom:solid 1px #eee;">code : <span style="color:#999;"><%=no1.getCode() %></span></h4>
		<h4 style="border-bottom:solid 1px #eee;">제목 : <span style="color:#999;"><%=no1.getTitle() %></span></h4>
		<h4>내용</h4>
		<p style="color:#999;" ><%=no1.getContent() %></p>
		<hr style="color:#eee; height:1px;">
		<h4 style="border-bottom:solid 1px #eee;">작성일 : <span style="color:#999;"><%=no1.getDate() %></span></h4>
		<h4 style="border-bottom:solid 1px #eee;">작성자 : <span style="color:#999;"><%=no1.getAdmin() %></span></h4>
		<form id="delete_form">
		<input type="hidden" name="del" value="y">
		<input type="hidden" name="code" value="<%=no1.getCode() %>">
		</form>
		<div><button style="border:none; width:70px; height: 30px; line-height:30px; color:snow; background-color:#999; margin:0 20px 0 0;"
		onclick="deleteSubmit()">삭제</button><button style="border:none; width:70px; height: 30px; line-height:30px; color:snow; background-color:#999; margin:0 20px 0 0;"
		onclick="updateSubmit(<%=no1.getCode()%>)">수정</button></div>
		<div onclick="modalHandle()" style="cursor:pointer; border:solid 1px; line-height:20px; text-align:center; position:absolute; width:20px; height:20px; top:10px; right:10px;">X</div>
	</div>
</div>

<%} %>
<%
//삭제 기능 구현
String del = request.getParameter("del");
if(del!=null&&del.equals("y")){
	String codeStr0 = request.getParameter("code");
	int code0 = Integer.parseInt(codeStr0);
	loader.deleteNotice(code0);
}
%>

</body>

<script>
	function movePage(num){
		window.location=window.location.pathname+'?page='+num;
	}
	
	function modalHandle(){
		var modal = document.querySelector('#modal_wrap');
		modal.hidden=true;
	}
	
	function modalOn(code){
		location.href=location.pathname+'?modal=on&code='+code;
	}
	
	function popRegForm(){
		var url = 'admin_w_hj_notice_reg.jsp';
		var name= '공지사항등록';
		var option = "width = 500, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
	
	function deleteSubmit(){
		var delForm = document.querySelector('#delete_form');
		if(confirm('해당 공지사항을 삭제하시겠습니까?')){
			delForm.submit();
		}
	}
	
	function updateSubmit(code){
		var url = 'admin_w_hj_notice_upt.jsp?code='+code;
		var name= '공지사항수정';
		var option = "width = 500, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
	
	window.onload=function(){
		var del = "<%=del%>";
		if(del==='y'){
			alert('삭제가 완료되었습니다.');
			window.location=window.location.pathname;
		}
	}
</script>
<script src = "../js/admin_sidebar.js"></script>
</html>