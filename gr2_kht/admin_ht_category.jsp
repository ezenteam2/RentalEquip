<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.*,jspexp.z01_vo.*,jspexp.b01_database.*"%>    
<!DOCTYPE html>
<html>
<head>

<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>
<meta charset="UTF-8">
<link rel="stylesheet" href="admin_CSS.css">
<style>



</style>

<title>Insert title here</title>
</head>
<body>

	<div class="adminTitle">카테고리 관리</div>

	<div class="adminTable">

	<form method="post" id="schForm">

	<div class="adminTableTH">
	
		<div class="adminTableTH1">등록날짜</div>
		<div class="adminTableTH2">순서</div>
		<div class="adminTableTH3">이미지 이름</div>
		<div class="adminTableTH4">카테고리 이름</div>
		<div class="adminTableTH5">삭제</div>
		<div class="adminTableTH6">이동</div>
	
	</div>

<%
	AdminCategory a1 = new AdminCategory();
%>


	
<% for (AdminCategoryVO a:a1.getAdminCategory()){ %>
	
	<div class="adminTableTD">
	
		<div class="adminTableTD1"><%=a.getCate_date() %></div>
		<div class="adminTableTD2"><%=a.getCate_order() %></div>
		<div class="adminTableTD3"><%=a.getCate_img() %></div>
		<div class="adminTableTD4" onclick="detail('<%=a.getCate_title()%>')"><%=a.getCate_title() %></div>
		<div class="adminTableTD5"><input type="button" class="adminDeleteBtn" value="삭제"/></div>
		<div class="adminTableTD6"><img src="image/mainIndexCategoryMenuIcon.png" class="adminMoveImg"/></div>
	
	</div>
	
	<%}%>
	
	
	<input type="hidden" name="cate_title" >

	
	</form>
	</div>

	<div class="adminSubmit">
	<input type="button" id="regBtn" value="등록하기" class="adminDeleteBtn" style="width:130px;"/>	
	</div>	
	
	
	
	<div id="regDiv" style="visibility:hidden;
								border:2px solid;
								position:absolute;
								top:25%;
								left:25%;
								padding:50px;	
								background-color:white;
								width:30%">
	
		<div class="adminRegiTitle">카테고리 등록</div>
		
		<form method="post" id="regForm" action="admin_ht_category_reg.jsp">
		
			<div class="adminRegiLink"><div class="adminRegiImgTitle">카테고리 이름</div><div style="display:inline-block;"><input type="text" name="cate_title" class="adminRegiLinkInput"/></div></div>
			<div class="adminRegiLink"><div class="adminRegiImgTitle">카테고리 순서</div><div style="display:inline-block;"><input type="text" name="cate_order" class="adminRegiLinkInput"/></div></div>
			<div class="adminRegiImg"><div class="adminRegiImgTitle">이미지 등록</div><div style="display:inline-block;"><input type="text" name="cate_img" class="adminRegiLinkInput"/></div></div>
			<div class="adminRegiBtnContainer"><input type="submit" class="adminRegiBtn" value="등록"/><input type="button" style="margin-left:30px;" class="adminRegiBtn" value="닫기" onclick="javascript:closeWin('#regDiv')"/></div>
			
			
		</form>

	</div>




	<%
	String cate_title = request.getParameter("cate_title"); if(cate_title==null) cate_title="";

	int cate_order = 0;
		String cate_orderS = request.getParameter("cate_order");
		if(cate_orderS!=null&&!cate_orderS.equals("")) cate_order=Integer.parseInt(cate_orderS);
	
	String cate_img = request.getParameter("cate_img"); if(cate_img==null) cate_img="";

	AdminCategoryVO dt = a1.detailAdminCategory(cate_title);
	
	%>
	

	<div id="detailDiv" style="visibility:hidden;
								border:2px solid;
								position:absolute;
								top:25%;
								left:25%;
								padding:50px;	
								background-color:white;
								width:30%">
	
		<div class="adminRegiTitle">카테고리 상세(<%=cate_title %>)</div>
		
		<form method="post" id="uptForm" action="admin_ht_category_upt.jsp">
		
		<input type="hidden" name="proc" value="upt"/>
		
			<div class="adminRegiLink"><div class="adminRegiImgTitle">카테고리 코드</div><div style="display:inline-block;"><%=dt.getCate_code() %></div></div>
			<div class="adminRegiLink"><div class="adminRegiImgTitle">등록날짜</div><div style="display:inline-block;"><%=dt.getCate_date() %></div></div>
			<div class="adminRegiLink"><div class="adminRegiImgTitle">카테고리 이름</div><div style="display:inline-block;"><input type="text" class="adminRegiLinkInput" name="cate_title" value="<%=dt.getCate_title() %>"/></div></div>
			<div class="adminRegiLink"><div class="adminRegiImgTitle">카테고리 순서</div><div style="display:inline-block;"><input type="text" class="adminRegiLinkInput" name="cate_order" value="<%=dt.getCate_order() %>"/></div></div>
			<div class="adminRegiLink"><div class="adminRegiImgTitle">이미지</div><div style="display:inline-block;"><input type="text" class="adminRegiLinkInput" name="cate_img" value="<%=dt.getCate_img() %>"/></div></div>
			<div class="adminRegiBtnContainer"><input type="submit" class="adminRegiBtn" value="수정"/>
												<input type="button" style="margin-left:30px;" class="adminRegiBtn" value="삭제" onclick="del('<%=dt.getCate_title() %>')"/>
												<input type="button" style="margin-left:30px;" class="adminRegiBtn" value="닫기" onclick="javascript:closeWin('#detailDiv')"/></div>
			
			
		</form>

	</div>

</body>

<script type="text/javascript">

	var regBtn = document.querySelector("#regBtn");
	var regDiv = document.querySelector("#regDiv");

	regBtn.onclick=function(){
		regDiv.style.visibility="visible";
	}	
	
	function closeWin(chWin){
		document.querySelector(chWin).style.visibility="hidden";
	}
	
	var detailDiv = document.querySelector("#detailDiv");
	var cate_title = '<%=cate_title %>';

	
	function detail(cate_title){
		console.log("클릭");
		document.querySelector("#schForm input[name=cate_title]").value=cate_title;
		document.querySelector("#schForm").submit();
	}
	
	
	if(cate_title!==''){
		detailDiv.style.visibility="visible";
	} 
	
	
	function del(cate_title){
		if(confirm("삭제 하시겠습니까?")){
			location.href="admin_ht_category_delete.jsp?cate_title="+cate_title;
		}
	}
</script>

</html>