<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,zental.gr2_kht.*"
    %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>


</style>

	<%
	
	String cate_title = request.getParameter("cate_title"); if(cate_title==null) cate_title="";
	
	int cate_order = 0;
		String cate_orderS = request.getParameter("cate_order");
		if(cate_orderS!=null&&!cate_orderS.equals("")) cate_order=Integer.parseInt(cate_orderS);
	
	String cate_img = request.getParameter("cate_img"); if(cate_img==null) cate_img="";

	AdminCategoryVO upt = new AdminCategoryVO(cate_title, cate_order, cate_img);
	AdminCategory dao = new AdminCategory();
	dao.updateCategory(upt);
	
	%>

<title>Insert title here</title>
</head>
<body>

	<form method="post" action="admin_ht_category.jsp">
		<input type="hidden" name="sno" value="<%=cate_title %>"/>
	</form>


</body>




<script type="text/javascript">

alert("수정완료!!!!");
document.querySelector("form").submit();

</script>

</html>