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


SELECT * FROM P4RECOMMEND;
SELECT * FROM P4RENT_ITEM;

SELECT 	b.RENT_ITEM_IMG, b.RENT_ITEM_TITLE, b.RENT_ITEM_PRICE,
		b.RENT_ITEM_PRICE_PER, a.RECOMM_ORDER 
FROM P4RECOMMEND a, P4RENT_ITEM b
WHERE a.RENT_ITEM_CODE = b.RENT_ITEM_CODE
ORDER BY a.RECOMM_ORDER;

SELECT RENT_ITEM_IMG, RENT_ITEM_TITLE, RENT_ITEM_PRICE, RENT_ITEM_PRICE_PER
FROM P4RENT_ITEM;


SELECT * FROM P4POINT;

	SELECT POINT_DATE, POINT_DETAIL, POINT_AMOUNT
	FROM P4POINT
	WHERE MEM_ID = 'userezenht' AND POINT_CATE = '획득';



