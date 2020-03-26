<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.*,jspexp.z01_vo.*,jspexp.b01_database.*"%>    
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
	
	AdminCategory dao = new AdminCategory();
	dao.deleteCategory(cate_title);
	%>

<title>Insert title here</title>
</head>
<body>

</body>




<script type="text/javascript">

	alert("삭제되었습니다!");
	location.href="admin_ht_category.jsp";


</script>

</html>