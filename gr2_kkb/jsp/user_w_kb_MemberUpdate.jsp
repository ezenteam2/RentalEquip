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
    	// �ּҰ˻��� ������ �˾� �������� ȣ���մϴ�.
    	// ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
    	var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    	
    	// ����� ���� ���, ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
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
            <h2>ȸ������ ����</h2>
        </div>
        <form method="post"  action="#">
            <div id="Member_Basic_Div">
                <div id="Profile_Div"><img src="Image/Profile.png"></div>
                <div id="Member_Infor_Div">
                    <div class="info_Div">
                        <span class="info_Span">���̵� : </span>
                        <span class="info_Span">userezenkb77</span>
                    </div>
                    <div class="info_Div">
                        <span class="info_Span">�г��� : </span>
                        <input type="text" id="nickname" name="Nickname" value="���¥��">
                    </div>
                </div>
            </div>
            <div id="inputPhone_Div">
                <span class="info_Span">�޴�����ȣ : </span>
                <input type="text" id="phone_input" name="phone" placeholder="�޴�����ȣ">
                <button id="Certification_Btns">����</button>
            </div>
            <div>
                <span class="info_Span">�̸��� : </span>
                <input type="email" name="email" id="input_email" placeholder="�̸���">
            </div>
            <div id="Address_Div">
                <div class="address">
                    <span class="info_Span">�ּ� : </span>
                    <input type="text" name="ZipCode" id="input_ZipCode" placeholder="�����ȣ">
                    <button id="Search_Zipcode_Btn" onclick="goPopup()">�����ȣ �˻�</button>
                </div>
                <div class="address">
                   <input type="text" name="Address1" id="Address1" placeholder="�ּ�">
                 </div>
                 <div class="address">
                    <input type="text" name="Address2" id="Address2" placeholder="���ּ�1">
                    <input type="text" name="Address3" id="Address3" placeholder="���ּ�">
                 </div>
            </div>
            <div id="Update_Btns_Div">
                <button id="Update_Btns" onclick="send()">����</button>
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