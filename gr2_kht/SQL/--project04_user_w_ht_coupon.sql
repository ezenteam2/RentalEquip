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


/* 보유중 쿠폰 */
SELECT pc.COU_TITLE, pc.COU_PRICE, pm.MEMCOU_SDATE + pc.COU_DUR ||'까지'
FROM P4COUPON pc , P4MEMCOUPON pm
WHERE	pm.MEM_ID = 'userezenht'
		AND pm.COU_CODE = pc.COU_CODE
		AND pm.MEMCOU_UDATE IS NULL;


/* 사용한 쿠폰 */
SELECT pc.COU_TITLE, pc.COU_PRICE, pm.MEMCOU_UDATE||' 사용완료'
FROM P4COUPON pc, P4MEMCOUPON pm 
WHERE 		pm.MEM_ID = 'userezenht'
		AND pm.COU_CODE = pc.COU_CODE
		AND pm.MEMCOU_UDATE IS NOT NULL; 

	