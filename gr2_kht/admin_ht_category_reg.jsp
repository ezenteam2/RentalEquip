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

<title>Insert title here</title>
</head>

	<%

	String cate_title = request.getParameter("cate_title"); if(cate_title==null) cate_title="";
	
	int cate_order = 0;
		String cate_orderS = request.getParameter("cate_order");
		if(cate_orderS!=null&&!cate_orderS.equals("")) cate_order=Integer.parseInt(cate_orderS);
	
	String cate_img = request.getParameter("cate_img"); if(cate_img==null) cate_img="";

	AdminCategoryVO ins = new AdminCategoryVO(cate_title, cate_order, cate_img);
	AdminCategory dao = new AdminCategory();

	dao.insertAdminCategory(ins);
	
	
	%>

<body>

</body>




<script type="text/javascript">

	alert("등록성공");
	location.href="admin_ht_category.jsp";

</script>

</html>