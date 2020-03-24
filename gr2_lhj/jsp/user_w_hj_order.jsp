<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제페이지</title>
    <link rel="stylesheet" href="../css/order.css">
    <script language="javascript">
        // opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
        //document.domain = "abc.go.kr";
        
        function goPopup(){
            // 주소검색을 수행할 팝업 페이지를 호출합니다.
            // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
            var pop = window.open("../api/jsp_sample/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
            
            // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
            //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
        }
        
        
        function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
                // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다
                document.getElementById('roadAddrPart1').value = roadAddrPart1;
                document.getElementById('addrDetail').value = addrDetail;
        }
    </script>
</head>
<body>
    <div class="wrap">
        <main>
            <form action="">
            <h1>주문서</h1>
            <section class="location">
                <h1><img src="../img/배송지.PNG" alt="배송지"><span>배송지</span></h1>
                <div class="name">
                    <span>수령인</span>
                    <input type="text" name="name" required>
                </div>
                <div class="tel_num">
                    <span>연락처</span>
                    <input type="text" name="tel_num" required>
                </div>
                <div class="loc">
                    <span>주소</span>
                    <input type="text" id="roadAddrPart1" onclick="goPopup();" name="roadAddrPart1" required/>
                </div>
                <div class="loc_det">
                    <span>상세주소</span>
                    <input type="text" id="addrDetail"  name="addrDetail" required/>
                </div>
                <div class="message">
                    <select>
                        <option value>배송요청사항선택</option>
                        <option value="직접 수령하겠습니다.">직접 수령하겠습니다.</option>
                        <option value="배송 전 연락주세요">배송 전 연락주세요.</option>
                        <option value="빠른 배송 부탁합니다.">빠른 배송 부탁합니다.</option>
                        <option value="부재 시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요</option>
                        <option value="문 앞에 놔주세요">문 앞에 놔주세요</option>
                    </select>
                    <textarea name="message" cols="30" rows="10" placeholder="요청사항을 입력해주세요" required></textarea>
                </div>
            </section>
            <section class="product">
                <h1><img src="../img/주문상품.PNG" alt="주문상품"><span>주문상품</span></h1>
                <h2>판매자<span>홀리맨</span></h2>
                <div class="order_detail">
                    <div class="top">
                        <img src="../img/상품이미지/상품2.jpg" alt="">
                        <div class="prod_name_area">
                            <span>상품명</span>
                            <span class="title">[주문폭주♥]발*티노 반팔 맨트맨 후드</span>
                        </div>
                    </div>
                    <div class="bottom">
                        <span class="amount">하루</span>
                        <span class="total">13,000원</span>
                    </div>
                </div>
            </section>
            <section class="payment">
                <h1><img src="../img/결제금액.PNG" alt=""><span>결제금액</span></h1>
                <div class="receipt_area">
                    <div class="price"><span>상품금액</span><span>13,000원</span></div>
                    <div class="del_fee"><span>배송비</span><span>3,000원</span></div>
                    <div class="coupon"><span>쿠폰할인</span><span>3,000원</span></div>
                    <div class="point"><span>포인트사용</span><span>1,000p</span></div>
                    <div class="tot_price"><span>총계</span><span>6,000원</span></div>
                </div>
            </section>
            <section class="agreement">
                <div class="check_all">
                    <input type="checkbox" required>
                    
                    <span>주문 상품정보 및 서비스 이용약관에
                        모두 동의합니다.</span>
                </div>
                <div class="check_1">
                    <input type="checkbox" name="" id="" required>
                    
                    <span>번개페이 이용약관 동의</span>
                    <span id='detail_more'>자세히</span>
                    <p>번개페이 서비스 이용약관 동의
                        2020-03-12
                        제 1조 (목적)
                        이 약관은 번개장터 주식회사(이하 '회사'라 함)이 제공하는 번개페이 서비스 (전자지급결제대행서비스 및 결제대금예치서비스)의 이용에 관한 제반 사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.
                        제 2조 (용어의 정의)
                        이 약관에서 정하는 용어의 정의는 다음과 같습니다.
                        
                        1. '번개페이 서비스'(이하 '서비스'라 함)는 회원 상호간의 거래의 안전을 위하여 회사가 물품대금의 입출금을 중개할 목적으로 마련한 절차를 말합니다.
                        2. '회원'은 이 약관을 승인하고 회사와 서비스이용계약을 체결한 자를 말합니다.
                        3. '판매자'는 물품을 판매할 의사로 해당 물품을 회사가 제공한 양식에 맞춰 등록한 회원을 말합니다.
                        4. '구매자'는 물품을 구매할 의사로 해당 물품의 금액과 수수료를 회사를 보내 물품을 구매하는 회원입니다.
                        5. 안전거래 또는 매매보호서비스 또는 에스크로: 회사가 운영하는 인터넷 사이트에서 회원 상호간의 거래의 안전을 위하여 회사가 물품대금의 입출금을 중개할 목적으로 마련한 절차를 말합니다. 위 항목에서 정의되지 않은 약관상의 용어의 의미는 일반적인 관행에 의합니다.</p>
                </div>
                <div class="check_2">
                    <input type="checkbox" name="" id="" required>
                    
                    <span>개인정보 수집 및 이용동의</span>
                    <span id='detail_more'>자세히</span>
                    <p>개인정보 수집 및 이용 동의
                        2018-09-01
                        원활한 서비스 제공을 위해 판매자에게 해당 정보가 제공됩니다.
                        회원님께서는 아래 내용에 대하여 동의를 하셔야 구매를 진행하실 수 있습니다.
                        
                        수집이용목적 수집항목 보유기간
                        
                        상품 및 경품 배송(반품/환불/취소 등), 배송지 확인, 최근 배송지 불러오기 기능 제공 배송지 정보 회원탈퇴 시 까지
                        단, 관계 법령의 규정에 따라 보존할 의무가 있으면 해당 기간 동안 보존
                        대금 결제/환불 서비스 제공, 주문/배송/거래 내역 조회 서비스 제공, 전자상거래법 준수 등 구매자 이름, 휴대폰번호, 상품 구매정보, 상품 수취인정보(이름, 주소, 전화번호), 개인통관고유부호(선택시) 회원탈퇴 시 까지
                        단, 관계 법령의 규정에 따라 보존할 의무가 있으면 해당 기간 동안 보존
                        
                        이용계약(이용약관)이 존속중인 탈퇴하지 않은 회원의 경우 보유기간은 보존의무기간 이상 보관할 수 있으며 이 기간이 경과된 기록에 대해서 파기요청이 있는 경우 파기함
                        결제수단에 따른 개인정보 수집.이용 항목이 상이할 수 있음</p>
                </div>
                <div class="check_3">
                    <input type="checkbox" name="" id="" required>
                    
                    <span>개인정보 판매자 제공에 동의</span>
                    <span id='detail_more'>자세히</span>
                    <p>개인정보 판매자 제공 동의
                        2018-09-01
                        원활한 서비스 제공을 위해 판매자에게 해당 정보가 제공 됩니다.
                        회원님께서는 아래 내용에 대하여 동의를 하셔야 구매를 진행하실 수 있습니다.
                        - 제공받는 자 : ssssss12
                        - 목적 : 판매자와 구매자의 거래의 원활한 진행, 본인 의사의 확인, 고객 상담 및 불만 처리, 상품과 경품 배송을 위한 배송지 확인 등
                        - 항목 : 구매자 이름, 휴대폰번호, 상품 구매정보, 상품 수취인정보(이름, 주소, 전화번호), 개인통관고유번호(선택시)
                        - 보유기간 : 구매 확정후 3개월</p>
                </div>
            </section>
            <div class="submit">
                <button type="submit">결제하기</button>
            </div>
            </form>
        </main>
    </div>
    <i class="close_icon"></i>
    <script src="../js/order.js"></script>
</body>
</html>