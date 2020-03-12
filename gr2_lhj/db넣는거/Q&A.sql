CREATE TABLE QnA_list(
	code NUMBER PRIMARY KEY,
	user_id varchar2(30),
	category varchar2(30),
	title varchar2(200),
	content varchar2(1000),
	reg_date DATE,
	reply varchar2(1000),
	admin NUMBER
);

CREATE SEQUENCE QnA_no
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000;

INSERT INTO QnA_list values(QnA_no.nextval, 'user1', '서비스기능', '팔로우 숫자가 갑자기 줄었어요',
'팔로우 숫자가 갑자기 줄었어요 어떻게 하나요?', sysdate, '개인정보 법이 개정되면서 1년 이상 로그인 하지 않은 사용자의 계정을 정기적으로 지우고 있습니다.

계정을 지우게 되면 그 사람의 팔로우가 무효가 되면서 상점의 팔로워 숫자가 줄어드는 것입니다. 실질적인 고객이 줄어드는 것은 아니니 너무 심려치 마시기 바랍니다.

감사합니다.', 1);

INSERT INTO QnA_list values(QnA_no.nextval, 'user23', '서비스기능', '전문상점이랑 개인상점차이?',
'차이가 뭐죠?', sysdate, '번개장터는 기본적으로 판매 상품을 기준으로 개인이 사용한 중고 상품을 파는 개인 상점과

새 상품 혹은 전문 매매품을 판매하는 전문 상점으로 나누어 운영하고 있습니다.', 1);

INSERT INTO QnA_list values(QnA_no.nextval, 'user232', '상품', '인기상품이 되려면 어떻게 하나요?',
'어떻게해요?', sysdate, '많은 관심을 받을 수 있는 상품을 등록하여 찜을 많이 받으면 좋을 수 있으나 인기상품 노출에는 영향을 그리 미치지 못합니다.

조회수 조작을 위해 여러 멀티계정 등을 활용한 어뷰징은 자동검출이 되어 오히려 손해가 발생할 수 있으니 조작은 하지 말아주세요

 

인기상품 노출 로직은 워낙 복잡하고 매일 변경되다보니, 일일이 설명할 수는 없지만, 조작 없이 성실히 본인의 상품을 판매하시려는 분들께 도움이 되는 방향과 많은 분들이 여러 혜택을 받으실 수 있또록 지속적으로 노력하고 있으니, 노출을 위한 노력이 아니라 좋은 제품을 성실하게 판매하려는 목적을 가지고 운영해 주시면 그게 더 좋은 방법 이라 생각합니다.

 ', 1);

INSERT INTO QnA_list values(QnA_no.nextval, 'user22', '상품', '상품등록은 어떻게 하는건가요?',
'어떻게해요?', sysdate, '상품 등록은 아래의 2가지 방법으로 가능합니다.

 

1. 앱 메인 하단의 [+내 상품 판매하기] 버튼 선택하여 진입하시어 등록해 주시면 됩니다.

 

2. 앱>우측상단 마이메뉴 버튼>하단의 [판매하기] 버튼 선택하여 진입하시어 등록해 주시면 됩니다.', 1);

INSERT INTO QnA_list values(QnA_no.nextval, 'user22', '상품', '제 상품이 왜 판매완료 처리되었죠?',
'?????', sysdate, '거래금지 품목(술,전자담배,의약품 등)을 등록하였을 시 삭제

상품명,태그,가격,이미지가 상품과 관련 없거나 정확하지 않을 시 판매완료

지나친 노출 사진 및 이용자들의 이용에 거북함을 주는 이미지 등록 시 삭제

타 사이트 홍보 및 url이 있을 시 판매완료

 

제재 관련 문의사항은 [마이메뉴>1:1문의]로 문의주시기 바랍니다.', 1);

INSERT INTO QnA_list values(QnA_no.nextval, 'user22', '상품', '상점의 웹사이트 주소는 어떻게 되나요?',
'?????', sysdate, 'shop.bunjang.co.kr/[아이디]

위와 같은 상점 URL 주소는 앱의 [내상점-상점 설정- 상점 주소]를 통해 만드실 수 있습니다.

 

상점 주소를 만드신 다음 카카오 스타일이나 네이버에 사이트 등록 (https://submit.naver.com/regist.nhn) 하시면 웹사이트 홍보가 되어 판매량을 늘릴 수 있습니다.', 1);


INSERT INTO QnA_list values(QnA_no.nextval, 'user22', '상품', '찜이 무엇이며 어떻게 하는 건가요?',
'?????', sysdate, '찜이란 관심 상품을 따로 보관하는 기능으로 상품 하단의 찜 버튼으로 하실 수 있습니다.

찜목록은 우측상단의 아이콘의 메뉴로 접근가능합니다.^^', 1);


INSERT INTO QnA_list values(QnA_no.nextval, 'user22', '상품', '전문상점으로 전환하고 싶어요',
'전환하고 싶어요', sysdate, '전문상점으로 전환하고 싶으시다면 [설정-전문상점전환신청]으로 메일 보내주시면 관련 부서에서

확인 후 도움을 드리겠습니다.', 1);


INSERT INTO QnA_list values(QnA_no.nextval, 'user2232', '상품', '상품삭제는 어떻게 하는 건가요?',
'상품삭제 어떻게 하나요??', sysdate, '상품 삭제를 원하신다면 [내상점-상품-삭제를 원하는 상품-하단 상태바의 삭제]로 하시면 됩니다.', 1);

INSERT INTO QnA_list values(QnA_no.nextval, 'user232', '상품', '상품 up기능은 어느정도로 사용할 수 있나요?',
'어느정도 사용이 가능한가요?', sysdate, 'up기능은 계정별로 하루 10개씩 제공하고 있으며 다음날 자정 12시에 갱신이 됩니다.

하루에 상품당 1회의 up만 가능한 점 참고해주세요.

 

[Tip!]

"UP플러스" 아이템을 구매하면 1일 1회 제한없이 UP을 사용할 수 있습니다.

UP플러스에 대한 자세한 내용은 자주묻는질문 > UP플러스 메뉴를 참조해주세요.', 1);

SELECT * FROM qna_list;


