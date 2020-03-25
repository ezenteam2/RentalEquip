<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,zental.gr2_lhj.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ 등록/수정</title>
    
</head>


<body>
<%
String type=request.getParameter("type");
FaqLoader loader = new FaqLoader();
boolean finish=false;

if(type!=null&&type.equals("reg")){%>
	<form style="display:flex; flex-direction: column; width:500px; align-items: flex-start;">
    	<input type="hidden" name="type" value="regfin">
        <div style=" width:500px; margin-bottom: 20px;"><span style="margin-right: 10px;">제목</span>
        <input style="width:350px;" type="text" name="title" required></div>
        <span style="margin-bottom: 5px;">내용</span>
        <textarea style="margin:0 0 20px 5px;" name="content" cols="60" rows="10" required></textarea>
        <input type="hidden" name="admin" value="ezenadhj" required>
        <input type="file" name="img" style="margin-bottom: 10px;">
        <button type="submit">등록하기</button>
    </form>
<%}%>

<%
if(type!=null&&type.equals("upt")){
	String codeStr=request.getParameter("code");
	int code0=Integer.parseInt(codeStr);
	Faq f1 = loader.getFaq(code0); %>
	<form style="display:flex; flex-direction: column; width:500px; align-items: flex-start;">
    	<input type="hidden" name="type" value="uptfin">
    	<input type="hidden" name="code" value=<%=f1.getCode() %>>
        <div style=" width:500px; margin-bottom: 20px;"><span style="margin-right: 10px;">제목</span>
        <input style="width:350px;" type="text" name="title" value="<%=f1.getTitle() %>" required></div>
        <span style="margin-bottom: 5px;">내용</span>
        <textarea style="margin:0 0 20px 5px;" name="content" cols="60" rows="10" required><%=f1.getDetail() %></textarea>
        <input type="hidden" name="admin" value="ezenadhj" required>
        <input type="file" style="margin-bottom: 10px;">
        <button type="submit">수정하기</button>
    </form>
<%} %>

<%
//수정, 등록이 완료된 후
if(type!=null&&type.equals("regfin")){
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String img = "../img/faq_img_img1.png";
	loader.insertFaq(title, content, img);
	finish=true;
}

if(type!=null&&type.equals("uptfin")){
	
	String codeStr=request.getParameter("code");
	int code=Integer.parseInt(codeStr);
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	loader.updateFaq(code, title, content);
	finish=true;
}
%>
    
    
<script>
    	window.onload = function(){
    		let finish=<%=finish%>
    		if(finish){
    			alert("등록/수정이 완료되었습니다.");
    			opener.parent.location.href=opener.parent.location.pathname;
    			window.close();
    		}
    	}
</script>
</body>
</html>