<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,zental.gr2_lhj.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항등록</title>
    
</head>
<%
NoticeLoader loader = new NoticeLoader();
String uptOn=request.getParameter("upt");
String codeStr = request.getParameter("code");
int code = Integer.parseInt(codeStr);
Notice n1 = new Notice("","");
if(uptOn==null){
	n1=loader.getNoticeDet(code);
}
boolean uptStatus=false;
if(uptOn!=null&&uptOn.equals("on")){
	System.out.println("실행");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	loader.updateNotice(title, content, code);
	uptStatus=true;
}

%>
<script>
    	window.onload = function(){
    		let reg=<%=uptStatus%>
    		if(reg){
    			alert("수정이 완료되었습니다.");
    			opener.parent.location.href=opener.parent.location.pathname;
    			window.close();
    		}
    	}
    </script>
<body>
    <form style="display:flex; flex-direction: column; width:500px; align-items: flex-start;">
    	<input type="hidden" name="upt" value="on">
        <div style=" width:500px; margin-bottom: 20px;"><span style="margin-right: 10px;">제목</span>
        <input style="width:350px;" type="text" name="title" value="<%=n1.getTitle() %>" required></div>
        <span style="margin-bottom: 5px;">내용</span>
        <textarea style="margin:0 0 20px 5px;" name="content" cols="60" rows="10" required><%=n1.getContent() %></textarea>
        <input type="hidden" name="admin" value="ezenadhj" required>
        <input type="file" style="margin-bottom: 10px;">
        <input type="hidden" name="code" value="<%=codeStr %>">
        <button type="submit">수정하기</button>
    </form>
    
    
</body>
</html>