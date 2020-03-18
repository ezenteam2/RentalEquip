<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/user_w_kb_memberUpdate.css">
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-3.4.1.js"></script>

</head>
<body>
    <script language="javascript">
    function goPopup(){
    	// 주소검색을 수행할 팝업 페이지를 호출합니다.
    	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    	var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    	
    	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
        //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
    }
    function jusoCallBack(zipNo, roadAddrPart1, addrDetail, bdNm){
    	document.querySelector("#input_ZipCode").value = zipNo;
    	document.querySelector("#Address1").value = roadAddrPart1;
    	document.querySelector("#Address2").value = addrDetail;
    	document.querySelector("#Address3").value = bdNm;
    	
    }
    
    function readInputFile(input) {
        if(input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $("#Profile-img").attr('src', reader.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    
	$("#inputProfile").on('change', function(){
		readInputFile(this);
	});



    </script>
    <%
    Connection conn=null;
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@192.168.4.90:1521:XE";
    	

    Statement pstmt = null;
    ResultSet rs = null;
    try{
        Class.forName(driver);
        conn=DriverManager.getConnection(url,"scott","tiger");
        String sql = "select mem_id, mem_profileimg, mem_nick, mem_addr, mem_email, mem_phone from p4member where mem_id = 'userezenkb77'";
        
        pstmt = conn.createStatement();
        
        rs = pstmt.executeQuery(sql);
        
        if(rs.next()){
        	String id = rs.getString(1);
        	String img = rs.getString(2);
        	String nick = rs.getString(3);
        	String addr = rs.getString(4);
        	String email = rs.getString(5);
        	String phone = rs.getString(6);
        	
        	
        
        
        
    %>
    <main>
        <div id="kb_title">
            <h2>회원정보 수정</h2>
        </div>
        <form action="user_w_kb_memberUpdateProc.jsp" method="post"  enctype="multipart/form-data">
            <div id="Member_Basic_Div">   
            <div id="Profile_Div">
            	<% if(img == null){ %>
                <img id="Profile-img" src="image/Profile.png">
                <%} else if(img!=null){ %>
                <img id="Profile-img" src="UploadFile\<%=img%>">
                <%} %>
                <input type="file" onchange="readInputFile(this)" name="file" id="inputProfile" accept="image/*" style="opacity:0.0; position:absolute; top:0; bottom:0; right:0;width:100%; height:100%;"></div>

                <div id="Member_Infor_Div">
                    <div class="info_Div">
                        <span class="info_Span">아이디 : </span>
                        <span class="info_Span"><%=id %></span>
                    </div>
                    <div class="info_Div">
                        <span class="info_Span">닉네임 : </span>
                        <input type="text" id="nickname" name="Nickname" value=<%=nick %>>
                    </div>
                </div>
            </div>
            <div id="inputPhone_Div">
                <span class="info_Span">휴대폰번호 : </span>
                <input type="text" id="phone_input" name="phone" placeholder="휴대폰번호" value=<%=phone %>>
                <button id="Certification_Btns">인증</button>
            </div>
            <div>
                <span class="info_Span">이메일 : </span>
                <input type="email" name="emails" id="input_email" placeholder="이메일" value=<%=email %>>
            </div>

            <div id="Address_Div">
                <div class="address">
                    <span class="info_Span">주소 : </span>
                    <input type="text" name="ZipCode" id="input_ZipCode" placeholder="우편번호">
                    <button type="button" id="Search_Zipcode_Btn" onclick="goPopup()">우편번호 검색</button>
                </div>
                <div class="address">
                   <input type="text" name="Address1" id="Address1" placeholder="주소" value=<%=addr %>>
                 </div>
                 <div class="address">
                    <input type="text" name="Address2" id="Address2" placeholder="상세주소1">
                    <input type="text" name="Address3" id="Address3" placeholder="상세주소">
                 </div>
            </div>

            <div id="Update_Btns_Div">
                <input type="submit">
            </div>
        </form>
        <%
        	}
    }catch(Exception e){
    	e.printStackTrace();
    }
        %>
    </main>
    <script>
	
    </script>
  
</body>
</html>