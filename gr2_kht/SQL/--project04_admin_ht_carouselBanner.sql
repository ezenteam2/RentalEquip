SELECT * FROM P4ITEM_CATEGORY ;
SELECT * FROM P4COUPON;
SELECT * FROM P4GRADE;
SELECT * FROM P4ADMIN;
SELECT * FROM P4MEMBER;
SELECT * FROM P4POINT;
SELECT * FROM P4MEMCOUPON;
SELECT * FROM P4CAROUSEL;
SELECT * FROM P4RECOMMEND;
SELECT * FROM P4ALARM;
SELECT * FROM P4EMONEY;
SELECT * FROM P4FAQ;
SELECT * FROM P4FAVOR_ITEM;
SELECT * FROM P4FOLLOW;
SELECT * FROM P4ITEM_QUERY;
SELECT * FROM P4MANAGE_INCOME;
SELECT * FROM P4NOTICE;
SELECT * FROM P4QNA;
SELECT * FROM P4RENT_ITEM;
SELECT * FROM P4RENTAL;
SELECT * FROM P4REPORT;
SELECT * FROM P4REQ_ITEM;


SELECT * FROM P4CAROUSEL;

/* 캐러셀 배너 리스트 */

SELECT CAROU_DATE, CAROU_ORDER, CAROU_IMG, CAROU_LINK
FROM P4CAROUSEL
ORDER BY CAROU_ORDER;

/* 캐러셀 배너 삭제 */

DELETE
FROM P4CAROUSEL
WHERE CAROU_CODE = '15000000';

/* 캐러셀 배너 순서 변경 */

UPDATE P4CAROUSEL
SET CAROU_ORDER = 8
WHERE CAROU_CODE = 15000007;

/* 캐러셀 배너 등록 */

INSERT INTO P4CAROUSEL VALUES (CAROU_CODE_SEQ.nextval, sysdate, 9, 'carouselIMG09.png', 'http://www.두근두근어디로갈까.com/이젠그랬으면좋겠네');