<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
String path = request.getContextPath(); %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZENTAL-사지말고 빌리세요</title>
    <link rel="stylesheet" href="../css/signup.css">
</head>
<body>
    <div class="signup">
           <p class="form form__title">회원가입</p>
           <form>
           <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-number@2x.png" alt=""><input class="form form__id" type="text" placeholder="아이디 *8~16자의 영문,숫자,특수문자 사용"><input class="form__isdouble--btn" type="button" value="중복체크"><br><hr>

           <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-pw@2x.png" alt=""><input class="form form__pwd" type="password" placeholder="비밀번호*8~16자의 영문,숫자,특수문자 사용"><br><hr>

           <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-pw@2x.png" alt=""><input class="form form__pwd form__pwd--check" type="password" placeholder="비밀번호 확인"><br><hr>

           <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-email@2x.png" alt=""><input class="form__username"  type="text" placeholder="이름"><br><hr>

           <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-email@2x.png" alt=""><input class="form__nickname"  type="text" placeholder="닉네임"><br><hr>

           <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-email@2x.png" alt=""><input class="form__address"  type="text" placeholder="주소"><input class="form__address--btn" type="button" value="주소검색"><br><hr>
    
            <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-number@2x.png" alt=""><input class="form__phone"  type="text" placeholder="휴대폰번호 *숫자만 허용"><input class="form__phone--request" type="button" value="인증번호요청"><br><hr>
    
            <img class="form__img" src="https://assets.bunjang.co.kr/bunny_desktop/images/input-comfirm@2x.png" alt=""><input class="form__requst-number"  type="text" placeholder="인증번호"><br><hr>
    
        <div class="allow">
            <input type="checkbox" id="total"><label for="total"><div class="content allow__total" ><img class="allow--checkbox allow__total--checked" src="./img/correct.png" alt=""></div></label><p class="allow__total--text">전체동의하기</p>
            <input type="checkbox" id="must1"><label for="must1"><div class="content allow__must allow__must1" ><img class="allow--checkbox allow__must1--checked" src="./img/correct.png" alt=""></div></label><p class="allow__must--text" style="color : red">(필수)</p><p class="allow__must--text"> ZENTAL 이용약관 동의</p><img  class="allow__must--img1-1" src="https://assets.bunjang.co.kr/bunny_desktop/images/icon-signup-dropdown@2x.png" alt="">
            <div class="allow__must--inner1">
                제 1 장 총칙
                제 1 조 (목적)
                본 약관은 서비스 이용자가 번개장터 주식회사 (이하 “회사”라 합니다)이 제공하는 온라인상의 인터넷 서비스(이하 “서비스”라고 하며, 접속 가능한 유•무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가
                제공하는 모든 “서비스”를 의미합니다. 이하 같습니다)에 회원으로 가입하고 이를 이용함에 있어 회사와 회원(본 약관에 동의하고 회원등록을 완료한 서비스 이용자를 말합니다. 이하 “회원”이라고 합니다)의
                권리•의무 및 책임사항을 규정함을 목적으로 합니다.

                제 2 조 (약관의 명시, 효력 및 개정)
                가. 회사는 이 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다.
                나. 회사는 온라인 디지털콘텐츠산업 발전법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 소비자기본법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
            </div>
            <input type="checkbox" id="must2"><label for="must2"></label><div class="content allow__must allow__must2"><img class="allow--checkbox allow__must2--checked" src="./img/correct.png" alt=""></div><p class="allow__must--text" style="color : red; ">(필수)</p><p class="allow__must--text"> 개인정보처리방침 동의</p><img class="allow__must--img2-1" src="https://assets.bunjang.co.kr/bunny_desktop/images/icon-signup-dropdown@2x.png" alt="">
            <div class="allow__must--inner2">
                번개장터 주식회사(이하 “회사” 또는 “번개장터”라 함)는 개인정보 보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.


                1. 개인정보의 처리 목적
                번개장터에서 제공하는 웹페이지(https://m.bunjang.co.kr)는 다음의 목적을 위하여 개인정 보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요 한 조치를 이행할 예정입니다.
                
                가. 홈페이지 회원 가입 및 관리
                회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별 〮 인증, 회원자격 유지 〮 관 리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 만 14세 미만 아 동의 개인정보 처리시 법정대리인의 동의여부 확인, 각종 고지 〮 통지 등을 목적으로 개 인정보를 처리합니다.
                
                나. 재화 또는 서비스 제공
                물품배송, 서비스 제공, 콘텐츠 제공, 맞춤서비스 제공, 본인인증, 연령인증, 요금결제 〮 정산 등을 목적으로 개인정보를 처리합니다.
                
                다. 마케팅 및 광고에의 활용
                신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.
                
                라. 회원간의 사기 및 분쟁 방지
                거래관련 사기 및 분쟁 방지, 발생된 거래관련 사기 및 분쟁에 대한 대응 등을 목적으로 개인정보를 처리합니다.
                
                </div>
            <input type="checkbox" id="not-must"><label for="not-must"><div class="content allow__not-must"  ><img class="allow--checkbox allow__not-must--checked" src="./img/correct.png" alt=""></div></label><p class="allow__not-must--text" style="color : gray;">(선택)</p><p class="allow__not-must--text" style="position:realative;left :78px; bottom:32px;">이메일, SMS광고 수신 동의</p>
            <input class="submit" type="submit" value="가입하기" onsubmit="window.location.href='../login.html'">
        
        </div>
    </form>
    </div>
    <script src="../js/signup.js"></script>
</body>
</html>