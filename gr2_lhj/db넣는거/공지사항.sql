CREATE TABLE notice_list(
	code NUMBER PRIMARY KEY,
	title varchar2(200),
	reg_date date,
	img varchar2(200),
	content varchar2(1000),
	admin NUMBER
);

CREATE SEQUENCE notice_no
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000;


INSERT INTO notice_list values(notice_no.nextval, '[공지]서비스 오류 안내', DATE(2020.02.13), '../img/배송지.png', '<p> 안녕하세요, 젠탈입니다.</p>
<p>2020년 2월 9일 자정부터 번개장터 앱과 웹(Web)에서 로그인이 안되거나 카테고리, 상점 등 정보가 표시되지 않는 등 오류가 발생했습니다.</p>
<p>현재 원인을 파악하였으며 복구 조치를 한 상태입니다.

이후 해당 문제를 해결하기 위해서는 캐시데이터를 삭제해야 합니다.
                                    
안드로이드, iOS 사용자 분들은 아래 방법에 따라 앱 업데이트 및 캐시 삭제 후에 다시 이용해주시길 부탁드립니다.</p>
<p>', 1);