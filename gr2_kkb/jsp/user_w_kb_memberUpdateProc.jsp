<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*, java.io.*"%>



<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@192.168.4.90:1521:XE";
	String nick;
	String phone;
	String Zipcode;
	String Addr1;
	String Addr2;
	String Addr3;
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
	
	
	
	try{
		MultipartRequest multi = null;
		multi = new MultipartRequest(request, saveFolder,maxSize, encType,
				new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		Class.forName(driver);
        conn=DriverManager.getConnection(url,"scott","tiger");
		while(files.hasMoreElements()){
			String name=(String) files.nextElement();
			String filename=multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type= multi.getContentType(name);
			File f = multi.getFile(name);
			nick = multi.getParameter("Nickname");
			phone = multi.getParameter("phone");
			email = multi.getParameter("email");
			Zipcode = multi.getParameter("ZipCode");
			Addr1 = multi.getParameter("Address1");
			Addr2 = multi.getParameter("Address2");
			Addr3 = multi.getParameter("Address3");
			if(Zipcode == null) Zipcode = "";
		 	if(Addr1 == null) Addr1 = "";
		 	if(Addr2 == null) Addr2 = "";
		 	if(Addr3 == null) Addr3 = "";		
			filedd = saveFolder + "/" + filename;
			
			String Address = "("+Zipcode + ")" + Addr1 + " " + Addr2 + " " + Addr3;
	        String sql = "update p4member set mem_profileimg=?, mem_nick=?, mem_addr=?, mem_phone=? where mem_id='userezenkb77'";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, filename);
	        pstmt.setString(2, nick);
	        pstmt.setString(3, Address);
	        pstmt.setString(4, phone);
	        
	        pstmt.executeUpdate();
	        
	      	out.println("<script>");
	      	out.println("alert('헬로우');");
	      	out.println("</script>");
	        pstmt.close();
	        conn.close();
	        
	        response.sendRedirect("user_w_kb_MypageMain.jsp");
		}
		 	
	       
	    	

	    	
	    	
	} catch(Exception e){
		e.printStackTrace();
	}


%>