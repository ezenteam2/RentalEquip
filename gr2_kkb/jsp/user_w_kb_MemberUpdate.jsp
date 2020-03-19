<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,zental.*" %>
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
    function jusoCallBack(roadFullAddr){
		document.getElementById("input_Address").value = roadFullAddr;
    	
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
  		request.setCharacterEncoding("utf-8");
  		String saveFolder = pageContext.getServletContext().getRealPath("/UploadFile/");
  		kb_Database db = new kb_Database();
  	  	  		String id = null;
  	  	  		String img = null;
  	  	  		String nick = null;
  	  	  		String addr = null;
  	  	  		String email = null;
  	  	  		String phone = null;
  	  	  		String url= null;
  	  	  		for(kb_MemberUpdate mem : db.UpdateList()){
  	  	  			id = mem.getId();
  	  	  			img = mem.getMem_profileImg();
  	  	  			nick = mem.getNick();
  	  	  			addr = mem.getAddr();
  	  	  			email = mem.getEmail();
  	  	  			phone = mem.getPhone();
  	  	  			url = saveFolder + img;
  	  	  			System.out.println("경로 테스트 : " + url);
  	  	  		}
  	%>
    <main>
        <div id="kb_title">
            <h2>회원정보 수정</h2>
        </div>
        <form action="user_w_kb_memberUpdateProc.jsp" method="post"  enctype="multipart/form-data">
            <div id="Member_Basic_Div">   
            <div id="Profile_Div">
            	<%
            		if(img == null){
            	%>
                <img id="Profile-img" src="image/Profile.png">
                 <%} else if(img!=null){ %>
                <img id="Profile-img" src="UploadFile/<%=img%>">
                <%} %>
                <input type="file" onchange="readInputFile(this)" name="file" id="inputProfile" accept="image/*" value="<%=img %>" style="opacity:0.0; position:absolute; top:0; bottom:0; right:0;width:100%; height:100%;"></div>

                <div id="Member_Infor_Div">
                    <div class="info_Div">
                        <span class="info_Span">아이디 : </span>
                        <span class="info_Span"><%=id %></span>
                    </div>
                    <div class="info_Div">
                        <span class="info_Span">닉네임 : </span>
                        <input type="text" id="nickname" name="Nickname" value="<%=nick%>">
                    </div>
                </div>
            </div>
            <div id="inputPhone_Div">
                <span class="info_Span">휴대폰번호 : </span>
                <input type="text" id="phone_input" name="phone" placeholder="휴대폰번호" value="<%=phone%>">
                <button id="Certification_Btns">인증</button>
            </div>
            <div>
                <span class="info_Span">이메일 : </span>
                <input type="email" name="emails" id="input_email" placeholder="이메일" value="<%=email%>">
            </div>

            <div id="Address_Div">
                <div class="address">
                    <span class="info_Span">주소 : </span>
                    <input type="text" name="Address" id="input_Address" value="<%=addr %>">
                    <button type="button" id="Search_Zipcode_Btn" onclick="goPopup()">주소찾기</button>
                </div>
                
            </div>

            <div id="Update_Btns_Div">
                <button id="Update_Btns">수정</button>
            </div>
        </form>
   
    </main>
    <script>
	
    </script>
  
</body>
</html>