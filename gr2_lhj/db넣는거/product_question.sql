CREATE TABLE product_question(
	code NUMBER PRIMARY KEY,
	reg_date DATE,
	prod_code NUMBER,
	USER_id varchar2(30),
	content varchar2(1000),
	answer varchar2(1000)
);

CREATE SEQUENCE prod_quest_no
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000;

INSERT INTO product_question values(prod_quest_no.nextval, to_date('2020-03-01', 'YYYY-MM-DD'),
1, 'user002', '사이즈가 어떻게 되나요?', NULL);

INSERT INTO product_question values(prod_quest_no.nextval, to_date('2020-02-29', 'YYYY-MM-DD'),
1, 'user002', '색 화면 그대로인가요?', NULL);

INSERT INTO product_question values(prod_quest_no.nextval, to_date('2020-01-02', 'YYYY-MM-DD'),
1, 'user002', '배송언제와요?', NULL);

INSERT INTO product_question values(prod_quest_no.nextval, to_date('2020-03-29', 'YYYY-MM-DD'),
1, 'user002', '팔렸나요?', NULL);

INSERT INTO product_question values(prod_quest_no.nextval, to_date('2020-02-22', 'YYYY-MM-DD'),
1, 'user002', '뚜껑 잘 닫히나요??', NULL);

INSERT INTO product_question values(prod_quest_no.nextval, to_date('2020-01-25', 'YYYY-MM-DD'),
1, 'user002', '언제까지 빌릴 수 있나요?', NULL);

INSERT INTO product_question values(prod_quest_no.nextval, to_date('2020-01-27', 'YYYY-MM-DD'),
1, 'user002', '파손 보험 있으신가요?', NULL);

SELECT * FROM product_question;