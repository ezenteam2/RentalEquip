<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,ZENTAL.z01_vo.*,ZENTAL.b01_database.*"%>
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
<body>

	<h2>로그인</h2>
	<form method="post">
	
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="mem_id"/></td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td><input type="text" name="mem_pw"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="로그인"/></td>
		</tr>
	</table>
	
	</form>

	<%
		String mem_id= request.getParameter("mem_id"); if(mem_id==null) mem_id="";
		String mem_pw= request.getParameter("mem_pw"); if(mem_pw==null) mem_pw="";
		boolean isValid = false;
		if(!mem_id.equals("")){
			A04_MemberDao dao = new A04_MemberDao();
			P4MEMBER m = dao.login(new P4MEMBER(mem_id, mem_pw));
			if(m!=null){
				session.setAttribute("mem", m);
				isValid = true;
				response.sendRedirect("a06_main.jsp");
			}
		}
	%>


</body>




<script type="text/javascript">

	var id = "<%=mem_id%>";
	var isValid = <%=isValid%>;

	if (id!="" && !isValid){
		alert(id+"은 등록된 계정이 아닙니다 \n 입력 아이디나 비밀번호를 다시 입력하세요");
		document.querySelector("[name=id]").focus();
	};
	
</script>

</html>




