<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*, java.io.*, zental.*"%>



<%

	
	
	
	String nick;
	String phone;
	String addr;
	String email;
	String saveFolder = pageContext.getServletContext().getRealPath("/UploadFile");
	System.out.println(saveFolder);
	File isDir = new File(saveFolder);
	
	if(!isDir.isDirectory()){
		System.out.println("디렉토리 없음");
		isDir.mkdir();
	}
	String encType = "utf-8";
	int maxSize = 5 * 1024 * 1024;
	String filedd = null;
	Boolean isSuccess = false;
	
	
	try{
		MultipartRequest multi = null;
		multi = new MultipartRequest(request, saveFolder,maxSize, encType,
				new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		String LoginId = (String)session.getAttribute("idkey");
		System.out.println("회원정보수정(proc) id : " + LoginId);
		
		while(files.hasMoreElements()){
			String name=(String) files.nextElement();
			String filename=multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type= multi.getContentType(name);
			File f = multi.getFile(name);
			nick = multi.getParameter("Nickname");
			phone = multi.getParameter("phone");
			email = multi.getParameter("emails");
			addr = multi.getParameter("Address");
			filedd = saveFolder + "/" + filename;
			
			kb_MemberUpdate mem = new kb_MemberUpdate();
			
			mem.setMem_profileImg(filename);
			mem.setAddr(addr);
			mem.setNick(nick);
			mem.setPhone(phone);
			mem.setEmail(email);
			
	      	kb_Database db = new kb_Database();
	      	db.updateMember(mem, LoginId);
	        isSuccess = true;
	        //response.sendRedirect("user_w_kb_MypageMain.jsp");
		}
 		%>
 		<script>
 			alert("수정되었습니다");
 			location.href="user_w_kb_MypageMain.jsp";
 		</script>
 		<%
	    	
	} catch(Exception e){
		e.printStackTrace();
	}


%>