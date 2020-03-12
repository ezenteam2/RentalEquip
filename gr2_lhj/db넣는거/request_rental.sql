CREATE TABLE req_rental_list(
	code number PRIMARY KEY,
	user_id varchar2(30),
	cate_code number,
	img varchar2(200),
	title varchar2(200),
	price number,
	detail varchar2(1000),
	prod_code number
);

CREATE SEQUENCE req_rental_li_no
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000;

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img1.jpg', '요런 느낌 파란색 드레스 구합니다', 5000, '하루 오천원 네고 가능 연락주세요~',
NULL);

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img2.jpg', '갈색코트 구합니다', 4000, '15일에서 17일까지 빌려요',
NULL);

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img3.jpg', '하늘색 자켓 빌려주실분~', 5500, '5500원씩 일주일 빌려주실분',
NULL);

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img4.jpg', '운동할 때 입을 옷 빌려봐요', 5500, '하루 오천원 오백 네고 가능 연락주세요~',
NULL);

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img5.jpg', '가디건 구합니다', 1000, '하루 천원 네고 가능 연락주세요~',
NULL);

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img6.jpg', '요런 느낌 옷 있나요?', 1000, '빠르게 연락주세요',
NULL);

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img7.jpg', '발 편한 신발 구합니다.', 1000, '싼 신발 환영',
NULL);

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img8.jpg', '노트북 빌려봅니다 삼성걸루', 15000, '사양 좋은 걸루',
NULL);

INSERT INTO req_rental_list values(req_rental_li_no.nextval, 'userid', 1,
'../img/rent_img/img9.jpg', '가방 빌립니다.', 3000, '방수되는 것만 연락주세요',
NULL);