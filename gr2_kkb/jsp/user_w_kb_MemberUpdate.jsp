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
    <script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function Postcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
    
                    // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                    // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                    var addr = ''; // �ּ� ����
                    var extraAddr = ''; // �����׸� ����
    
                    //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                    if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                        addr = data.roadAddress;
                    } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                        addr = data.jibunAddress;
                    }
    
                    // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
                    if(data.userSelectedType === 'R'){
                        // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                        // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                        if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
                        document.querySelector("#Address2").value = extraAddr;
                    
                    } else {
                        document.querySelector("#Address2").value = '';
                    }
    
                    // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                    document.querySelector("#input_ZipCode").value = data.zonecode;
                    document.querySelector("#Address1").value = addr;
                    // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                    document.querySelector("#Address3").focus();
                }
            }).open();
        }
    </script>
    <main>
        <div id="kb_title">
            <h2>ȸ������ ����</h2>
        </div>
        <form method="post">
            <div id="Member_Basic_Div">
                <div id="Profile_Div"><img src="Image/Profile.png"></div>
                <div id="Member_Infor_Div">
                    <div class="info_Div">
                        <span class="info_Span">���̵� : </span>
                        <span class="info_Span">EZENKB</span>
                    </div>
                    <div class="info_Div">
                        <span class="info_Span">�г��� : </span>
                        <span class="info_Span">���� KB</span>
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
                    <button id="Search_Zipcode_Btn" onclick="Postcode()">�����ȣ �˻�</button>
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
                <button id="Update_Btns">����</button>
            </div>
        </form>
    </main>
  
</body>
</html>