<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/user_w_kb_memberUpdate.css">
    <title>Document</title>
    

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

    </script>
    
    <main>
        <div id="kb_title">
            <h2>회원정보 수정</h2>
        </div>
        <form method="post"  action="#">
            <div id="Member_Basic_Div">
                <div id="Profile_Div"><img src="Image/Profile.png"></div>
                <div id="Member_Infor_Div">
                    <div class="info_Div">
                        <span class="info_Span">아이디 : </span>
                        <span class="info_Span">userezenkb77</span>
                    </div>
                    <div class="info_Div">
                        <span class="info_Span">닉네임 : </span>
                        <input type="text" id="nickname" name="Nickname" value="기범짜응">
                    </div>
                </div>
            </div>
            <div id="inputPhone_Div">
                <span class="info_Span">휴대폰번호 : </span>
                <input type="text" id="phone_input" name="phone" placeholder="휴대폰번호">
                <button id="Certification_Btns">인증</button>
            </div>
            <div>
                <span class="info_Span">이메일 : </span>
                <input type="email" name="email" id="input_email" placeholder="이메일">
            </div>
            <div id="Address_Div">
                <div class="address">
                    <span class="info_Span">주소 : </span>
                    <input type="text" name="ZipCode" id="input_ZipCode" placeholder="우편번호">
                    <button id="Search_Zipcode_Btn" onclick="goPopup()">우편번호 검색</button>
                </div>
                <div class="address">
                   <input type="text" name="Address1" id="Address1" placeholder="주소">
                 </div>
                 <div class="address">
                    <input type="text" name="Address2" id="Address2" placeholder="상세주소1">
                    <input type="text" name="Address3" id="Address3" placeholder="상세주소">
                 </div>
            </div>
            <div id="Update_Btns_Div">
                <button id="Update_Btns" onclick="send()">수정</button>
            </div>
        </form>
    </main>
    <script>
    	function send(){
    		submit();
    	}
    </script>
  
</body>
</html>