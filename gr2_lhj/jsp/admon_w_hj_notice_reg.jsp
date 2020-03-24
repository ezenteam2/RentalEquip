<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,zental.gr2_lhj.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>등록창</title>
    
</head>
<%
String regOn=request.getParameter("reg");
boolean regStatus=false;
if(regOn!=null&&regOn.equals("on")){
	System.out.println("실행");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	NoticeLoader loader = new NoticeLoader();
	
	loader.insertNotice(title, content);
	regStatus=true;
}

%>
<script>
    	window.onload = function(){
    		let reg=<%=regStatus%>
    		if(reg){
    			alert("등록이 완료되었습니다.");
    			window.close();
    		}
    	}
    </script>
<body>
    <form style="display:flex; flex-direction: column; width:500px; align-items: flex-start;">
    	<input type="hidden" name="reg" value="on">
        <div style=" width:500px; margin-bottom: 20px;"><span style="margin-right: 10px;">제목</span><input style="width:350px;" type="text" name="title" required></div>
        <span style="margin-bottom: 5px;">내용</span>
        <textarea style="margin:0 0 20px 5px;" name="content" cols="60" rows="10" required></textarea>
        <input type="hidden" name="admin" value="ezenadhj" required>
        <input type="file" style="margin-bottom: 10px;">
        <button type="submit">등록하기</button>
    </form>
    
    
</body>
</html>