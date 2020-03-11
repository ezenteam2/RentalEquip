/*
cou_code_seq;
cate_code_seq;
rent_item_code_seq;
rental_code_seq;
query_code_seq;
report_code_seq;
req_code_seq;
emo_code_seq;
memcou_code_seq;
point_code_seq;
qna_code_seq;
faq_code_seq;
notice_code_seq;
carou_code_seq;
alarm_code_seq;
manage_code_seq;
*/


/*
 cate_code_seq;
 */

SELECT * FROM P4ITEM_CATEGORY ;
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, '가전', 1, 'www.ezenimgserver.com/cateimg01');
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, '가구', 2, 'www.ezenimgserver.com/cateimg02');
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, '유아용품', 3, 'www.ezenimgserver.com/cateimg03');
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, '도서', 4, 'www.ezenimgserver.com/cateimg04');
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, 'IT', 5, 'www.ezenimgserver.com/cateimg05');
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, '의류', 6, 'www.ezenimgserver.com/cateimg06');
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, '스포츠', 7, 'www.ezenimgserver.com/cateimg07');
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, '레저', 8, 'www.ezenimgserver.com/cateimg08');
INSERT INTO P4ITEM_CATEGORY VALUES (cate_code_seq.nextval, sysdate, '캠핑', 9, 'www.ezenimgserver.com/cateimg09');


/*
 cou_code_seq;
 */
SELECT * FROM P4COUPON;
INSERT INTO P4COUPON VALUES (cou_code_seq.nextval, '첫구매', 5000, 30);
INSERT INTO P4COUPON VALUES (cou_code_seq.nextval, '생일', 10000, 15);
INSERT INTO P4COUPON VALUES (cou_code_seq.nextval, '친구추천', 1000, 15);


SELECT * FROM P4GRADE;
INSERT INTO P4GRADE VALUES ('일반', 'www.ezenimgserver.com/graderimg01', 'none', '포인트 적립 1%');
INSERT INTO P4GRADE VALUES ('실버', 'www.ezenimgserver.com/graderimg02', '산출기준 100점 이상', '포인트 적립 1.5%');
INSERT INTO P4GRADE VALUES ('골드', 'www.ezenimgserver.com/graderimg03', '산출기준 500점 이상', '포인트 적립 2%');
INSERT INTO P4GRADE VALUES ('VIP', 'www.ezenimgserver.com/graderimg04', '산출기준 1000점 이상', '포인트 적립 2.5%');
INSERT INTO P4GRADE VALUES ('VVIP', 'www.ezenimgserver.com/graderimg05', '산출기준 3000점 이상', '포인트 적립 3%');

SELECT * FROM P4ADMIN;
INSERT INTO P4ADMIN VALUES ('ezenadht', '1515', 'E20200311', '김현태');
INSERT INTO P4ADMIN VALUES ('ezenadys', '1616', 'E20200312', '김용승');
INSERT INTO P4ADMIN VALUES ('ezenadkb', '1717', 'E20200313', '권기범');
INSERT INTO P4ADMIN VALUES ('ezenadsh', '1818', 'E20200314', '유서희');
INSERT INTO P4ADMIN VALUES ('ezenadhj', '1919', 'E20200315', '이형준');

SELECT * FROM P4MEMBER;
INSERT INTO P4MEMBER VALUES ('userezenht', '1111', '김현태', 'www.ezenimgserver.com/profileht', '쩌뤗', '서울시 영등포구', 'userezenht@naver.com', '01044445555', '1988-05-20', 'VVIP', 150000, 3000, '이상없음', '');
INSERT INTO P4MEMBER VALUES ('userezenys11', '1111', '김용승', 'www.ezenimgserver.com/profile', '용승이다', '안산시 무슨 동네?', 'userezenys11@naver.com', '01033554455', '1991-02-02', '일반', 130000, 130, '이상없음', '');
INSERT INTO P4MEMBER VALUES ('userezenkb77', '1111', '권기범', 'www.ezenimgserver.com/profile', '기범짜응', '파주시 어디세여?', 'userezenkb77@naver.com', '01044775599', '1992-03-03', '실버', 27000, 30000, '3일 정지', '');
INSERT INTO P4MEMBER VALUES ('userezensh56', '2222', '유서희', 'www.ezenimgserver.com/profile', '서희에엿', '서울시 구로구 맞져?', 'userezensh56@naver.com', '01011442255', '1993-04-04', '골드', 3780300, 650, '5일 정지', '');
INSERT INTO P4MEMBER VALUES ('userezenhj11', '3333', '이형준', 'www.ezenimgserver.com/profile', '형준찡', '서울시 무슨구이싐?', 'userezenhj11@naver.com', '01077445588', '1993-05-05', 'VIP', 6700, 2800, '이상없음', '');
INSERT INTO P4MEMBER VALUES ('apple7878', '4444', '애플맨', 'www.ezenimgserver.com/profile', '나는야잡스', '대전시 XX구', 'apple7878@naver.com', '01011444455', '2001-03-11', 'VIP', 50000, 700, '7일 정지', 'userezenhj11');
INSERT INTO P4MEMBER VALUES ('genius99', '5555', '천재', 'www.ezenimgserver.com/profile', '누가날', '어딘지 안알랴줌', 'genius99@naver.com', '01045454545', '2020-03-11', '일반', 38000, 0, '이상없음', 'userezenys11');






SELECT * FROM P4ALARM;
SELECT * FROM P4CAROUSEL;
SELECT * FROM P4EMONEY;
SELECT * FROM P4FAQ;
SELECT * FROM P4FAVOR_ITEM;
SELECT * FROM P4FOLLOW;
SELECT * FROM P4ITEM_QUERY;
SELECT * FROM P4MANAGE_INCOME;
SELECT * FROM P4MEMCOUPON;
SELECT * FROM P4NOTICE;
SELECT * FROM P4POINT;
SELECT * FROM P4QNA;
SELECT * FROM P4RECOMMEND;
SELECT * FROM P4RENT_ITEM;
SELECT * FROM P4RENTAL;
SELECT * FROM P4REPORT;
SELECT * FROM P4REQ_ITEM;