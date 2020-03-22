<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name = "regFrm" action="memberProc.jsp" method="post">
		<input name="id"><input type="button" onClick="idCheck(this.form.id.value)"><br>
		<input name="pwd"><br>
		<input name="name"><br>
		<input name="email"><br>
		<input name="address"><br>
		<input type="submit">
	</form>
	<script>
	function idCheck(id){
		var frm = document.regFrm;
		if(id==""){
			alert('id를 입력해주세요');
			frm.id.focus();
			return;
		} 
		url = "idCheck.jsp?id="+id;
		window.open(url,"idcheck","width=300px,height=150px");
	}
	</script>
</body>
</html>