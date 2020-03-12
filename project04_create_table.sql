-- 등급
ALTER TABLE P4grade
	DROP CONSTRAINT PK_grade; -- 등급 기본키

-- 등급
DROP TABLE P4grade;

-- 등급
CREATE TABLE P4grade (
	grade_title     VARCHAR2(20)   NOT NULL CONSTRAINT grade_title_ck CHECK (grade_title IN('일반', '실버', '골드','VIP', 'VVIP')), -- 등급 이름
	grade_img       VARCHAR2(200)  NOT NULL, -- 등급 이미지
	grade_condition VARCHAR2(30)   NOT NULL, -- 등급 조건
	grade_bene      VARCHAR2(1000) NOT NULL  -- 등급 혜택
);

-- 등급 기본키
CREATE UNIQUE INDEX PK_grade
	ON grade ( -- 등급
		grade_title ASC -- 등급 이름
	);

-- 등급
ALTER TABLE P4grade
	ADD
		CONSTRAINT PK_grade -- 등급 기본키
		PRIMARY KEY (
			grade_title -- 등급 이름
		);
		
	

-------------------------------------------------------------------------------------------	
	
	
	
-- 쿠폰종류
ALTER TABLE P4coupon
	DROP CONSTRAINT FK_memcoupon_TO_coupon; -- 보유쿠폰 -> 쿠폰종류

-- 쿠폰종류
ALTER TABLE P4coupon
	DROP CONSTRAINT PK_coupon; -- 쿠폰종류 기본키

-- 쿠폰종류
DROP TABLE P4coupon;

-- 쿠폰종류
CREATE TABLE P4coupon (
	cou_code  NUMBER       NOT NULL, -- 쿠폰 코드
	cou_title VARCHAR2(30) NOT NULL, -- 쿠폰 이름
	cou_price NUMBER       NOT NULL, -- 쿠폰 가격
	cou_dur   NUMBER       NOT NULL  -- 쿠폰 사용 기간
);

-- 쿠폰종류 기본키
CREATE UNIQUE INDEX PK_coupon
	ON coupon ( -- 쿠폰종류
		cou_code ASC -- 쿠폰 코드
	);

-- 쿠폰종류
ALTER TABLE P4coupon
	ADD
		CONSTRAINT PK_coupon -- 쿠폰종류 기본키
		PRIMARY KEY (
			cou_code -- 쿠폰 코드
		);

-- 쿠폰종류
ALTER TABLE P4coupon
	ADD
		CONSTRAINT FK_memcoupon_TO_coupon -- 보유쿠폰 -> 쿠폰종류
		FOREIGN KEY (
			cou_code -- 쿠폰 코드
		)
		REFERENCES memcoupon ( -- 보유쿠폰
			memcou_code -- 쿠폰 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	

-------------------------------------------------------------------------------------------
	
	
	
-- 회원
ALTER TABLE P4member
	DROP CONSTRAINT FK_grade_TO_member; -- 등급 -> 회원

-- 회원
ALTER TABLE P4member
	DROP CONSTRAINT PK_member; -- 회원 기본키

-- 회원
DROP TABLE P4member;

-- 회원
CREATE TABLE P4member (
	mem_id         VARCHAR2(30)  NOT NULL, -- 회원 ID
	mem_pw         VARCHAR2(30)  NOT NULL, -- 회원 비밀번호
	mem_name       VARCHAR2(30)  NOT NULL, -- 회원 이름
	mem_profileimg VARCHAR2(200) NULL,     -- 회원 프로필사진
	mem_nick       VARCHAR2(30)  NULL CONSTRAINT mem_nick_uk UNIQUE,     -- 회원 닉네임
	mem_addr       VARCHAR2(200) NOT NULL, -- 회원 주소
	mem_email      VARCHAR2(200) NOT NULL CONSTRAINT mem_email_uk UNIQUE, -- 회원 이메일
	mem_phone      VARCHAR2(12)  NOT NULL CONSTRAINT mem_phone_uk UNIQUE, -- 회원 휴대폰번호
	mem_birth      DATE          NOT NULL, -- 회원 생일
	mem_grade      VARCHAR2(20)  NULL,     -- 등급 이름
	mem_emoney     NUMBER        NULL,     -- 회원 E머니
	mem_point      NUMBER        NULL,     -- 회원 포인트
	mem_curr       VARCHAR2(20)  NULL CONSTRAINT mem_curr_ck CHECK (mem_curr IN('이상없음','3일 정지','5일 정지','7일 정지')),   -- 회원 상태
	mem_introducer VARCHAR2(30)  NULL      -- 추천인
);

-- 회원 기본키
CREATE UNIQUE INDEX PK_member
	ON member ( -- 회원
		mem_id ASC -- 회원 ID
	);

-- 회원
ALTER TABLE P4member
	ADD
		CONSTRAINT PK_member -- 회원 기본키
		PRIMARY KEY (
			mem_id -- 회원 ID
		);

-- 회원
ALTER TABLE P4member
	ADD
		CONSTRAINT FK_grade_TO_member -- 등급 -> 회원
		FOREIGN KEY (
			mem_grade -- 등급 이름
		)
		REFERENCES grade ( -- 등급
			grade_title -- 등급 이름
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
	
-------------------------------------------------------------------------------------------
	
	
-- 관리자
ALTER TABLE P4admin
	DROP CONSTRAINT PK_admin; -- 관리자 기본키

-- 관리자
DROP TABLE P4admin;

-- 관리자
CREATE TABLE P4admin (
	ad_id    VARCHAR2(30) NOT NULL, -- 관리자 ID
	ad_pw    VARCHAR2(30) NOT NULL, -- 관리자 비밀번호
	ad_empno VARCHAR2(30) NOT NULL CONSTRAINT ad_empno_uk UNIQUE, -- 관리자 사번
	ad_name  VARCHAR2(30) NOT NULL  -- 관리자 이름
);

-- 관리자 기본키
CREATE UNIQUE INDEX PK_admin
	ON admin ( -- 관리자
		ad_id ASC -- 관리자 ID
	);

-- 관리자
ALTER TABLE P4admin
	ADD
		CONSTRAINT PK_admin -- 관리자 기본키
		PRIMARY KEY (
			ad_id -- 관리자 ID
		);
		
	
	
-------------------------------------------------------------------------------------------
	

	
-- 카테고리
ALTER TABLE P4item_category
	DROP CONSTRAINT PK_item_category; -- 카테고리 기본키

-- 카테고리
DROP TABLE P4item_category;

-- 카테고리
CREATE TABLE P4item_category (
	cate_code  NUMBER        NOT NULL, -- 카테고리 코드
	cate_date  DATE          NOT NULL, -- 카테고리 등록 날짜
	cate_title VARCHAR2(30)  NOT NULL CONSTRAINT cate_title_uk UNIQUE, -- 카테고리 이름
	cate_order NUMBER        NOT NULL CONSTRAINT cate_order_uk UNIQUE, -- 카테고리 순서
	cate_img   VARCHAR2(200) NOT NULL  -- 카테고리 이미지
);

-- 카테고리 기본키
CREATE UNIQUE INDEX PK_item_category
	ON item_category ( -- 카테고리
		cate_code ASC -- 카테고리 코드
	);

-- 카테고리
ALTER TABLE P4item_category
	ADD
		CONSTRAINT PK_item_category -- 카테고리 기본키
		PRIMARY KEY (
			cate_code -- 카테고리 코드
		);
		
	
	
-------------------------------------------------------------------------------------------
	

	
-- 렌탈 상품
ALTER TABLE P4rent_item
	DROP CONSTRAINT FK_member_TO_rent_item; -- 회원 -> 렌탈 상품

-- 렌탈 상품
ALTER TABLE P4rent_item
	DROP CONSTRAINT FK_item_category_TO_rent_item; -- 카테고리 -> 렌탈 상품

-- 렌탈 상품
ALTER TABLE P4rent_item
	DROP CONSTRAINT FK_recommend_TO_rent_item; -- 추천상품목록 -> 렌탈 상품

-- 렌탈 상품
ALTER TABLE P4rent_item
	DROP CONSTRAINT PK_rent_item; -- 렌탈 상품 기본키

-- 렌탈 상품
DROP TABLE P4rent_item;

-- 렌탈 상품
CREATE TABLE P4rent_item (
	rent_item_code      NUMBER         NOT NULL, -- 상품 코드
	mem_id              VARCHAR2(30)   NOT NULL, -- 회원 ID
	cate_code           NUMBER         NOT NULL, -- 카테고리 코드
	rent_item_title     VARCHAR2(100)  NOT NULL, -- 상품 제목
	rent_item_price     NUMBER         NOT NULL, -- 렌탈 금액
	rent_item_price_per VARCHAR2(20)   NOT NULL, -- 렌탈 금액 단위
	rent_item_sdate     DATE           NOT NULL, -- 렌탈 시작 날짜
	rent_item_fdate     DATE           NOT NULL, -- 렌탈 종료 날짜
	rent_item_mindur    VARCHAR2(20)   NOT NULL, -- 렌탈 최소 대여 기간
	rent_item_method    VARCHAR2(20)   NOT NULL, -- 상품 배송 방법
	rent_item_detail    VARCHAR2(1000) NOT NULL, -- 상품 상세 설명
	rent_item_img       VARCHAR2(200)  NOT NULL, -- 상품 이미지
	rent_item_movie     VARCHAR2(200)  NULL,     -- 상품 동영상
	rent_item_notice    VARCHAR2(1000) NOT NULL, -- 주의사항 및 보증금 정책
	rent_item_keyword   VARCHAR2(30)   NOT NULL, -- 상품 연관 키워드
	rent_item_curr      VARCHAR2(30)   NOT NULL, -- 거래상태
	rent_item_hits      NUMBER         DEFAULT 0      -- 조회수
);

-- 렌탈 상품 기본키
CREATE UNIQUE INDEX PK_rent_item
	ON rent_item ( -- 렌탈 상품
		rent_item_code ASC -- 상품 코드
	);

-- 렌탈 상품
ALTER TABLE P4rent_item
	ADD
		CONSTRAINT PK_rent_item -- 렌탈 상품 기본키
		PRIMARY KEY (
			rent_item_code -- 상품 코드
		);

-- 렌탈 상품
ALTER TABLE P4rent_item
	ADD
		CONSTRAINT FK_member_TO_rent_item -- 회원 -> 렌탈 상품
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 렌탈 상품
ALTER TABLE P4rent_item
	ADD
		CONSTRAINT FK_item_category_TO_rent_item -- 카테고리 -> 렌탈 상품
		FOREIGN KEY (
			cate_code -- 카테고리 코드
		)
		REFERENCES item_category ( -- 카테고리
			cate_code -- 카테고리 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 렌탈 상품
ALTER TABLE P4rent_item
	ADD
		CONSTRAINT FK_recommend_TO_rent_item -- 추천상품목록 -> 렌탈 상품
		FOREIGN KEY (
			rent_item_code -- 상품 코드
		)
		REFERENCES recommend ( -- 추천상품목록
			rent_item_code -- 상품 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
				
	
	
-------------------------------------------------------------------------------------------
	

	
	
-- 렌탈하기
ALTER TABLE P4rental
	DROP CONSTRAINT FK_rent_item_TO_rental; -- 렌탈 상품 -> 렌탈하기

-- 렌탈하기
ALTER TABLE P4rental
	DROP CONSTRAINT FK_member_TO_rental; -- 회원 -> 렌탈하기

-- 렌탈하기
ALTER TABLE P4rental
	DROP CONSTRAINT PK_rental; -- 렌탈하기 기본키

-- 렌탈하기
DROP TABLE P4rental;

-- 렌탈하기
CREATE TABLE P4rental (
	rental_code            NUMBER         NOT NULL, -- 렌탈 코드
	mem_id                 VARCHAR2(30)   NOT NULL, -- 회원 ID
	rent_item_code         NUMBER         NOT NULL, -- 상품 코드
	rental_sdate           DATE           NOT NULL, -- 렌탈 시작 날짜
	rental_fdate           DATE           NOT NULL, -- 렌탈 종료 날짜
	rental_delicomp        VARCHAR2(30)   NULL,     -- 렌탈 택배 회사
	rental_delinum         VARCHAR2(30)   NULL,     -- 렌탈 운송장 번호
	rental_curr            VARCHAR2(30)   NULL CONSTRAINT rental_curr_ck CHECK (rental_curr IN ('배송중', '렌탈중', '반납중', '반납완료')),     -- 렌탈 거래 상태
	rental_return_delicomp VARCHAR2(30)   NULL,     -- 반납 택배 회사
	rental_return_delinum  VARCHAR2(30)   NULL,     -- 반납 운송장 번호
	rental_first_img       VARCHAR2(200)  NULL,     -- 렌탈 전 이미지
	rental_second_img      VARCHAR2(200)  NULL,     -- 렌탈 초기 이미지
	rental_third_img       VARCHAR2(200)  NULL,     -- 렌탈 반납시 이미지
	rental_score           NUMBER         NULL CONSTRAINT rental_score_ck CHECK (rental_score IN (1, 2, 3, 4, 5)),     -- 렌탈 후기 평점
	rental_ps              VARCHAR2(1000) NULL,     -- 렌탈 후기 내용
	rental_ps_ans          VARCHAR2(1000) NULL      -- 렌탈 답변 내용
);

-- 렌탈하기 기본키
CREATE UNIQUE INDEX PK_rental
	ON rental ( -- 렌탈하기
		rental_code ASC -- 렌탈 코드
	);

-- 렌탈하기
ALTER TABLE P4rental
	ADD
		CONSTRAINT PK_rental -- 렌탈하기 기본키
		PRIMARY KEY (
			rental_code -- 렌탈 코드
		);

-- 렌탈하기
ALTER TABLE P4rental
	ADD
		CONSTRAINT FK_rent_item_TO_rental -- 렌탈 상품 -> 렌탈하기
		FOREIGN KEY (
			rent_item_code -- 상품 코드
		)
		REFERENCES rent_item ( -- 렌탈 상품
			rent_item_code -- 상품 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 렌탈하기
ALTER TABLE P4rental
	ADD
		CONSTRAINT FK_member_TO_rental -- 회원 -> 렌탈하기
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 상품 문의
ALTER TABLE P4item_query
	DROP CONSTRAINT FK_rent_item_TO_item_query; -- 렌탈 상품 -> 상품 문의

-- 상품 문의
ALTER TABLE P4item_query
	DROP CONSTRAINT FK_member_TO_item_query; -- 회원 -> 상품 문의

-- 상품 문의
ALTER TABLE P4item_query
	DROP CONSTRAINT PK_item_query; -- 상품 문의 기본키

-- 상품 문의
DROP TABLE P4item_query;

-- 상품 문의
CREATE TABLE P4item_query (
	query_code     NUMBER         NOT NULL, -- 문의 코드
	query_date     DATE           NOT NULL, -- 문의 등록 날짜
	rent_item_code NUMBER         NOT NULL, -- 상품 코드
	mem_id         VARCHAR2(30)   NOT NULL, -- 회원 ID
	query_content  VARCHAR2(1000) NOT NULL, -- 문의 내용
	query_answer   VARCHAR2(1000) NULL      -- 답변 내용
);

-- 상품 문의 기본키
CREATE UNIQUE INDEX PK_item_query
	ON item_query ( -- 상품 문의
		query_code ASC -- 문의 코드
	);

-- 상품 문의
ALTER TABLE P4item_query
	ADD
		CONSTRAINT PK_item_query -- 상품 문의 기본키
		PRIMARY KEY (
			query_code -- 문의 코드
		);

-- 상품 문의
ALTER TABLE P4item_query
	ADD
		CONSTRAINT FK_rent_item_TO_item_query -- 렌탈 상품 -> 상품 문의
		FOREIGN KEY (
			rent_item_code -- 상품 코드
		)
		REFERENCES rent_item ( -- 렌탈 상품
			rent_item_code -- 상품 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 상품 문의
ALTER TABLE P4item_query
	ADD
		CONSTRAINT FK_member_TO_item_query -- 회원 -> 상품 문의
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 상품 신고
ALTER TABLE P4report
	DROP CONSTRAINT FK_member_TO_report; -- 회원 -> 상품 신고

-- 상품 신고
ALTER TABLE P4report
	DROP CONSTRAINT FK_rent_item_TO_report; -- 렌탈 상품 -> 상품 신고

-- 상품 신고
ALTER TABLE P4report
	DROP CONSTRAINT PK_report; -- 상품 신고 기본키

-- 상품 신고
DROP TABLE P4report;

-- 상품 신고
CREATE TABLE P4report (
	report_code    NUMBER         NOT NULL, -- 신고 코드
	mem_id         VARCHAR2(30)   NOT NULL, -- 회원 ID
	rent_item_code NUMBER         NOT NULL, -- 상품 코드
	report_date    DATE           NOT NULL, -- 신고 날짜
	report_cate    VARCHAR2(30)   NOT NULL, -- 신고 분류
	report_reason  VARCHAR2(1000) NOT NULL, -- 신고 내용
	report_curr    VARCHAR2(30)   NOT NULL CONSTRAINT report_curr_ck CHECK (report_curr IN('처리중','반려처리','렌탈상품중지','사용자계정중지'))  -- 처리 상태
);

-- 상품 신고 기본키
CREATE UNIQUE INDEX PK_report
	ON report ( -- 상품 신고
		report_code ASC -- 신고 코드
	);

-- 상품 신고
ALTER TABLE P4report
	ADD
		CONSTRAINT PK_report -- 상품 신고 기본키
		PRIMARY KEY (
			report_code -- 신고 코드
		);

-- 상품 신고
ALTER TABLE P4report
	ADD
		CONSTRAINT FK_member_TO_report -- 회원 -> 상품 신고
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 상품 신고
ALTER TABLE P4report
	ADD
		CONSTRAINT FK_rent_item_TO_report -- 렌탈 상품 -> 상품 신고
		FOREIGN KEY (
			rent_item_code -- 상품 코드
		)
		REFERENCES rent_item ( -- 렌탈 상품
			rent_item_code -- 상품 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 렌탈요청 게시판
ALTER TABLE P4req_item
	DROP CONSTRAINT FK_member_TO_req_item; -- 회원 -> 렌탈요청 게시판

-- 렌탈요청 게시판
ALTER TABLE P4req_item
	DROP CONSTRAINT FK_rent_item_TO_req_item; -- 렌탈 상품 -> 렌탈요청 게시판

-- 렌탈요청 게시판
ALTER TABLE P4req_item
	DROP CONSTRAINT FK_item_category_TO_req_item; -- 카테고리 -> 렌탈요청 게시판

-- 렌탈요청 게시판
ALTER TABLE P4req_item
	DROP CONSTRAINT PK_req_item; -- 렌탈요청 게시판 기본키

-- 렌탈요청 게시판
DROP TABLE P4req_item;

-- 렌탈요청 게시판
CREATE TABLE P4req_item (
	req_code       NUMBER         NOT NULL, -- 렌탈요청 글 코드
	mem_id         VARCHAR2(30)   NOT NULL, -- 회원 ID
	cate_code      NUMBER         NOT NULL, -- 카테고리 코드
	req_img        VARCHAR2(200)  NULL,     -- 렌탈요청 상품 이미지
	req_title      VARCHAR2(200)  NOT NULL, -- 렌탈요청 상품 글제목
	req_sdate      DATE           NOT NULL, -- 렌탈요청 시작 날짜
	req_fdate      DATE           NOT NULL, -- 렌탈요청 종료 날짜
	req_price      NUMBER         NOT NULL, -- 렌탈요청 상품 가격
	req_condition  VARCHAR2(1000) NOT NULL, -- 렌탈요청 조건
	req_detail     VARCHAR2(1000) NOT NULL, -- 렌탈요청 설명
	req_hits       NUMBER         NULL,     -- 찜 횟수
	rent_item_code NUMBER         NULL      -- 상품 코드
);

-- 렌탈요청 게시판 기본키
CREATE UNIQUE INDEX PK_req_item
	ON req_item ( -- 렌탈요청 게시판
		req_code ASC -- 렌탈요청 글 코드
	);

-- 렌탈요청 게시판
ALTER TABLE P4req_item
	ADD
		CONSTRAINT PK_req_item -- 렌탈요청 게시판 기본키
		PRIMARY KEY (
			req_code -- 렌탈요청 글 코드
		);

-- 렌탈요청 게시판
ALTER TABLE P4req_item
	ADD
		CONSTRAINT FK_member_TO_req_item -- 회원 -> 렌탈요청 게시판
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 렌탈요청 게시판
ALTER TABLE P4req_item
	ADD
		CONSTRAINT FK_rent_item_TO_req_item -- 렌탈 상품 -> 렌탈요청 게시판
		FOREIGN KEY (
			rent_item_code -- 상품 코드
		)
		REFERENCES rent_item ( -- 렌탈 상품
			rent_item_code -- 상품 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 렌탈요청 게시판
ALTER TABLE P4req_item
	ADD
		CONSTRAINT FK_item_category_TO_req_item -- 카테고리 -> 렌탈요청 게시판
		FOREIGN KEY (
			cate_code -- 카테고리 코드
		)
		REFERENCES item_category ( -- 카테고리
			cate_code -- 카테고리 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- E머니
ALTER TABLE P4emoney
	DROP CONSTRAINT FK_member_TO_emoney; -- 회원 -> E머니

-- E머니
ALTER TABLE P4emoney
	DROP CONSTRAINT PK_emoney; -- E머니 기본키

-- E머니
DROP TABLE P4emoney;

-- E머니
CREATE TABLE P4emoney (
	emo_code     NUMBER       NOT NULL, -- E머니 코드
	mem_id       VARCHAR2(30) NOT NULL, -- 회원 ID
	emo_cate     VARCHAR2(20) NOT NULL CONSTRAINT emo_cate_ck CHECK (emo_cate IN ('충전', '출금')), -- 구분(충전/출금)
	emo_bankname VARCHAR2(30) NOT NULL, -- 계좌 은행
	emo_account  VARCHAR2(30) NOT NULL, -- 계좌 번호
	emo_amount   NUMBER       NOT NULL, -- 금액
	emo_date     DATE         NOT NULL  -- 날짜
);

-- E머니 기본키
CREATE UNIQUE INDEX PK_emoney
	ON emoney ( -- E머니
		emo_code ASC -- E머니 코드
	);

-- E머니
ALTER TABLE P4emoney
	ADD
		CONSTRAINT PK_emoney -- E머니 기본키
		PRIMARY KEY (
			emo_code -- E머니 코드
		);

-- E머니
ALTER TABLE P4emoney
	ADD
		CONSTRAINT FK_member_TO_emoney -- 회원 -> E머니
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;		
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 팔로잉
ALTER TABLE P4follow
	DROP CONSTRAINT FK_member_TO_follow; -- 회원 -> 팔로잉

-- 팔로잉
ALTER TABLE P4follow
	DROP CONSTRAINT PK_follow; -- 팔로잉 기본키

-- 팔로잉
DROP TABLE P4follow;

-- 팔로잉
CREATE TABLE P4follow (
	mem_id       VARCHAR2(30) NOT NULL, -- 회원 ID
	follo_mem_id VARCHAR2(30) NOT NULL  -- 대상 회원 ID
);

-- 팔로잉 기본키
CREATE UNIQUE INDEX PK_follow
	ON follow ( -- 팔로잉
		mem_id       ASC, -- 회원 ID
		follo_mem_id ASC  -- 대상 회원 ID
	);

-- 팔로잉
ALTER TABLE P4follow
	ADD
		CONSTRAINT PK_follow -- 팔로잉 기본키
		PRIMARY KEY (
			mem_id,       -- 회원 ID
			follo_mem_id  -- 대상 회원 ID
		);

-- 팔로잉
ALTER TABLE P4follow
	ADD
		CONSTRAINT FK_member_TO_follow -- 회원 -> 팔로잉
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	
-- 보유쿠폰
ALTER TABLE P4MEMCOUPON
	DROP CONSTRAINT FK_TABLE_TO_P4MEMCOUPON; -- 회원 -> 보유쿠폰

-- 보유쿠폰
ALTER TABLE P4MEMCOUPON
	DROP CONSTRAINT FK_TABLE9_TO_P4MEMCOUPON; -- 쿠폰종류 -> 보유쿠폰

-- 보유쿠폰
ALTER TABLE P4MEMCOUPON
	DROP CONSTRAINT PK_P4MEMCOUPON; -- 보유쿠폰 기본키

-- 보유쿠폰
DROP TABLE P4MEMCOUPON;

-- 보유쿠폰
CREATE TABLE P4MEMCOUPON (
	memcou_code  NUMBER       NOT NULL, -- 보유 쿠폰 코드
	cou_code     NUMBER       NOT NULL, -- 쿠폰 코드
	mem_id       VARCHAR2(30) NULL,     -- 회원 ID
	memcou_sdate DATE         NULL,     -- 쿠폰 시작날짜
	memcou_fdate DATE         NULL      -- 쿠폰 사용날짜
);

-- 보유쿠폰 기본키
CREATE UNIQUE INDEX PK_P4MEMCOUPON
	ON P4MEMCOUPON ( -- 보유쿠폰
		memcou_code ASC -- 보유 쿠폰 코드
	);

-- 보유쿠폰
ALTER TABLE P4MEMCOUPON
	ADD
		CONSTRAINT PK_P4MEMCOUPON -- 보유쿠폰 기본키
		PRIMARY KEY (
			memcou_code -- 보유 쿠폰 코드
		);

-- 보유쿠폰
ALTER TABLE P4MEMCOUPON
	ADD
		CONSTRAINT FK_TABLE_TO_P4MEMCOUPON -- 회원 -> 보유쿠폰
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES TABLE ( -- 회원
			COL -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 보유쿠폰
ALTER TABLE P4MEMCOUPON
	ADD
		CONSTRAINT FK_TABLE9_TO_P4MEMCOUPON -- 쿠폰종류 -> 보유쿠폰
		FOREIGN KEY (
			cou_code -- 쿠폰 코드
		)
		REFERENCES TABLE9 ( -- 쿠폰종류
			COL -- 쿠폰 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;	
	
-------------------------------------------------------------------------------------------
	

	

-- 포인트
ALTER TABLE P4point
	DROP CONSTRAINT FK_member_TO_point; -- 회원 -> 포인트

-- 포인트
ALTER TABLE P4point
	DROP CONSTRAINT PK_point; -- 포인트 기본키

-- 포인트
DROP TABLE P4point;

-- 포인트
CREATE TABLE P4point (
	point_code   NUMBER       NOT NULL, -- 포인트 코드
	mem_id       VARCHAR2(30) NOT NULL, -- 회원 ID
	point_date   DATE         NOT NULL, -- 등록 날짜
	point_cate   VARCHAR2(30) NOT NULL CONSTRAINT point_cate_ck CHECK (point_cate IN('획득', '사용')), -- 획득/사용 구분
	point_detail VARCHAR2(30) NOT NULL, -- 획득/사용 내용
	point_amount NUMBER       NOT NULL  -- 획득/사용 포인트
);

-- 포인트 기본키
CREATE UNIQUE INDEX PK_point
	ON point ( -- 포인트
		point_code ASC -- 포인트 코드
	);

-- 포인트
ALTER TABLE P4point
	ADD
		CONSTRAINT PK_point -- 포인트 기본키
		PRIMARY KEY (
			point_code -- 포인트 코드
		);

-- 포인트
ALTER TABLE P4point
	ADD
		CONSTRAINT FK_member_TO_point -- 회원 -> 포인트
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- Q&A
ALTER TABLE P4qna
	DROP CONSTRAINT FK_member_TO_qna; -- 회원 -> Q&A

-- Q&A
ALTER TABLE P4qna
	DROP CONSTRAINT FK_admin_TO_qna; -- 관리자 -> Q&A

-- Q&A
ALTER TABLE P4qna
	DROP CONSTRAINT PK_qna; -- Q&A 기본키

-- Q&A
DROP TABLE P4qna;

-- Q&A
CREATE TABLE P4qna (
	qna_code    NUMBER         NOT NULL, -- Q&A 글 코드
	mem_id      VARCHAR2(30)   NOT NULL, -- 회원 ID
	qna_cate    VARCHAR2(30)   NOT NULL, -- Q&A 카테고리
	qna_title   VARCHAR2(200)  NOT NULL, -- Q&A 제목
	qna_content VARCHAR2(1000) NOT NULL, -- Q&A 내용
	qna_date    DATE           NOT NULL, -- Q&A 등록날짜
	qna_answer  VARCHAR2(1000) NULL,     -- Q&A 관리자답변
	ad_id       NUMBER         NULL      -- 관리자 ID
);

-- Q&A 기본키
CREATE UNIQUE INDEX PK_qna
	ON qna ( -- Q&A
		qna_code ASC -- Q&A 글 코드
	);

-- Q&A
ALTER TABLE P4qna
	ADD
		CONSTRAINT PK_qna -- Q&A 기본키
		PRIMARY KEY (
			qna_code -- Q&A 글 코드
		);

-- Q&A
ALTER TABLE P4qna
	ADD
		CONSTRAINT FK_member_TO_qna -- 회원 -> Q&A
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- Q&A
ALTER TABLE P4qna
	ADD
		CONSTRAINT FK_admin_TO_qna -- 관리자 -> Q&A
		FOREIGN KEY (
			ad_id -- 관리자 ID
		)
		REFERENCES admin ( -- 관리자
			ad_id -- 관리자 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- FAQ & 이용가이드
ALTER TABLE P4faq
	DROP CONSTRAINT FK_admin_TO_faq; -- 관리자 -> FAQ & 이용가이드

-- FAQ & 이용가이드
ALTER TABLE P4faq
	DROP CONSTRAINT PK_faq; -- FAQ & 이용가이드 기본키

-- FAQ & 이용가이드
DROP TABLE P4faq;

-- FAQ & 이용가이드
CREATE TABLE P4faq (
	faq_code   NUMBER         NOT NULL, -- FAQ 글 코드
	faq_title  VARCHAR2(200)  NOT NULL, -- FAQ 제목
	faq_date   DATE           NOT NULL, -- FAQ 등록날짜
	faq_img    VARCHAR2(200)  NULL,     -- FAQ 대표 이미지
	faq_detail VARCHAR2(1000) NOT NULL, -- FAQ 내용
	ad_id      NUMBER         NOT NULL  -- 관리자 ID
);

-- FAQ & 이용가이드 기본키
CREATE UNIQUE INDEX PK_faq
	ON faq ( -- FAQ & 이용가이드
		faq_code ASC -- FAQ 글 코드
	);

-- FAQ & 이용가이드
ALTER TABLE P4faq
	ADD
		CONSTRAINT PK_faq -- FAQ & 이용가이드 기본키
		PRIMARY KEY (
			faq_code -- FAQ 글 코드
		);

-- FAQ & 이용가이드
ALTER TABLE P4faq
	ADD
		CONSTRAINT FK_admin_TO_faq -- 관리자 -> FAQ & 이용가이드
		FOREIGN KEY (
			ad_id -- 관리자 ID
		)
		REFERENCES admin ( -- 관리자
			ad_id -- 관리자 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 공지사항
ALTER TABLE P4notice
	DROP CONSTRAINT FK_admin_TO_notice; -- 관리자 -> 공지사항

-- 공지사항
ALTER TABLE P4notice
	DROP CONSTRAINT PK_notice; -- 공지사항 기본키

-- 공지사항
DROP TABLE P4notice;

-- 공지사항
CREATE TABLE P4notice (
	notice_code   NUMBER         NOT NULL, -- 공지사항 글 코드
	notice_title  VARCHAR2(200)  NOT NULL, -- 공지사항 제목
	notice_date   DATE           NOT NULL, -- 공지사항 등록날짜
	notice_img    VARCHAR2(200)  NULL,     -- 공지사항 이미지
	notice_detail VARCHAR2(1000) NOT NULL, -- 공지사항 내용
	ad_id         NUMBER         NOT NULL  -- 관리자 ID
);

-- 공지사항 기본키
CREATE UNIQUE INDEX PK_notice
	ON notice ( -- 공지사항
		notice_code ASC -- 공지사항 글 코드
	);

-- 공지사항
ALTER TABLE P4notice
	ADD
		CONSTRAINT PK_notice -- 공지사항 기본키
		PRIMARY KEY (
			notice_code -- 공지사항 글 코드
		);

-- 공지사항
ALTER TABLE P4notice
	ADD
		CONSTRAINT FK_admin_TO_notice -- 관리자 -> 공지사항
		FOREIGN KEY (
			ad_id -- 관리자 ID
		)
		REFERENCES admin ( -- 관리자
			ad_id -- 관리자 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 캐러셀배너
ALTER TABLE P4carousel
	DROP CONSTRAINT PK_carousel; -- 캐러셀배너 기본키

-- 캐러셀배너
DROP TABLE P4carousel;

-- 캐러셀배너
CREATE TABLE P4carousel (
	carou_code  NUMBER        NOT NULL, -- 캐러셀 코드
	carou_date  DATE          NOT NULL, -- 등록 날짜
	carou_order NUMBER        NOT NULL, -- 캐러셀 순서
	carou_img   VARCHAR2(200) NOT NULL, -- 캐러셀 이미지
	carou_link  VARCHAR2(200) NULL      -- 캐러셀 링크
);

-- 캐러셀배너 기본키
CREATE UNIQUE INDEX PK_carousel
	ON carousel ( -- 캐러셀배너
		carou_code ASC -- 캐러셀 코드
	);

-- 캐러셀배너
ALTER TABLE P4carousel
	ADD
		CONSTRAINT PK_carousel -- 캐러셀배너 기본키
		PRIMARY KEY (
			carou_code -- 캐러셀 코드
		);
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 추천상품목록
ALTER TABLE P4recommend
	DROP CONSTRAINT PK_recommend; -- 추천상품목록 기본키

-- 추천상품목록
DROP TABLE P4recommend;

-- 추천상품목록
CREATE TABLE P4recommend (
	rent_item_code NUMBER NOT NULL, -- 상품 코드
	recomm_date    DATE   NOT NULL, -- 등록 날짜
	recomm_order   NUMBER NOT NULL CONSTRAINT recomm_order_uk UNIQUE  -- 추천상품 순서
);

-- 추천상품목록 기본키
CREATE UNIQUE INDEX PK_recommend
	ON recommend ( -- 추천상품목록
		rent_item_code ASC -- 상품 코드
	);

-- 추천상품목록
ALTER TABLE P4recommend
	ADD
		CONSTRAINT PK_recommend -- 추천상품목록 기본키
		PRIMARY KEY (
			rent_item_code -- 상품 코드
		);	
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 알림
ALTER TABLE P4alarm
	DROP CONSTRAINT FK_member_TO_alarm; -- 회원 -> 알림

-- 알림
ALTER TABLE P4alarm
	DROP CONSTRAINT FK_qna_TO_alarm; -- Q&A -> 알림

-- 알림
ALTER TABLE P4alarm
	DROP CONSTRAINT FK_report_TO_alarm; -- 상품 신고 -> 알림

-- 알림
ALTER TABLE P4alarm
	DROP CONSTRAINT FK_req_item_TO_alarm; -- 렌탈요청 게시판 -> 알림

-- 알림
ALTER TABLE P4alarm
	DROP CONSTRAINT FK_item_query_TO_alarm; -- 상품 문의 -> 알림

-- 알림
ALTER TABLE P4alarm
	DROP CONSTRAINT FK_rental_TO_alarm; -- 렌탈하기 -> 알림

-- 알림
ALTER TABLE P4alarm
	DROP CONSTRAINT PK_alarm; -- 알림 기본키

-- 알림
DROP TABLE P4alarm;

-- 알림
CREATE TABLE P4alarm (
	alarm_code  NUMBER       NOT NULL, -- 알림 코드
	mem_id      VARCHAR2(30) NOT NULL, -- 회원 ID
	rental_code NUMBER       NULL,     -- 렌탈 코드
	report_code NUMBER       NULL,     -- 신고 코드
	qna_code    NUMBER       NULL,     -- Q&A 글 코드
	query_code  NUMBER       NULL,     -- 문의 코드
	req_code    NUMBER       NULL,     -- 렌탈요청 글 코드
	alarm_chk   NUMBER       NOT NULL  -- 확인여부
);

-- 알림 기본키
CREATE UNIQUE INDEX PK_alarm
	ON alarm ( -- 알림
		alarm_code ASC -- 알림 코드
	);

-- 알림
ALTER TABLE P4alarm
	ADD
		CONSTRAINT PK_alarm -- 알림 기본키
		PRIMARY KEY (
			alarm_code -- 알림 코드
		);

-- 알림
ALTER TABLE P4alarm
	ADD
		CONSTRAINT FK_member_TO_alarm -- 회원 -> 알림
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 알림
ALTER TABLE P4alarm
	ADD
		CONSTRAINT FK_qna_TO_alarm -- Q&A -> 알림
		FOREIGN KEY (
			qna_code -- Q&A 글 코드
		)
		REFERENCES qna ( -- Q&A
			qna_code -- Q&A 글 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 알림
ALTER TABLE P4alarm
	ADD
		CONSTRAINT FK_report_TO_alarm -- 상품 신고 -> 알림
		FOREIGN KEY (
			report_code -- 신고 코드
		)
		REFERENCES report ( -- 상품 신고
			report_code -- 신고 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 알림
ALTER TABLE P4alarm
	ADD
		CONSTRAINT FK_req_item_TO_alarm -- 렌탈요청 게시판 -> 알림
		FOREIGN KEY (
			req_code -- 렌탈요청 글 코드
		)
		REFERENCES req_item ( -- 렌탈요청 게시판
			req_code -- 렌탈요청 글 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 알림
ALTER TABLE P4alarm
	ADD
		CONSTRAINT FK_item_query_TO_alarm -- 상품 문의 -> 알림
		FOREIGN KEY (
			query_code -- 문의 코드
		)
		REFERENCES item_query ( -- 상품 문의
			query_code -- 문의 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 알림
ALTER TABLE P4alarm
	ADD
		CONSTRAINT FK_rental_TO_alarm -- 렌탈하기 -> 알림
		FOREIGN KEY (
			rental_code -- 렌탈 코드
		)
		REFERENCES rental ( -- 렌탈하기
			rental_code -- 렌탈 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 찜한 상품
ALTER TABLE P4favor_item
	DROP CONSTRAINT FK_member_TO_favor_item; -- 회원 -> 찜한 상품

-- 찜한 상품
ALTER TABLE P4favor_item
	DROP CONSTRAINT FK_rent_item_TO_favor_item; -- 렌탈 상품 -> 찜한 상품

-- 찜한 상품
ALTER TABLE P4favor_item
	DROP CONSTRAINT PK_favor_item; -- 찜한 상품 기본키

-- 찜한 상품
DROP TABLE P4favor_item;

-- 찜한 상품
CREATE TABLE P4favor_item (
	mem_id         VARCHAR2(30) NOT NULL, -- 회원 ID
	rent_item_code NUMBER       NOT NULL  -- 상품 코드
);

-- 찜한 상품 기본키
CREATE UNIQUE INDEX PK_favor_item
	ON favor_item ( -- 찜한 상품
		mem_id         ASC, -- 회원 ID
		rent_item_code ASC  -- 상품 코드
	);

-- 찜한 상품
ALTER TABLE P4favor_item
	ADD
		CONSTRAINT PK_favor_item -- 찜한 상품 기본키
		PRIMARY KEY (
			mem_id,         -- 회원 ID
			rent_item_code  -- 상품 코드
		);

-- 찜한 상품
ALTER TABLE P4favor_item
	ADD
		CONSTRAINT FK_member_TO_favor_item -- 회원 -> 찜한 상품
		FOREIGN KEY (
			mem_id -- 회원 ID
		)
		REFERENCES member ( -- 회원
			mem_id -- 회원 ID
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 찜한 상품
ALTER TABLE P4favor_item
	ADD
		CONSTRAINT FK_rent_item_TO_favor_item -- 렌탈 상품 -> 찜한 상품
		FOREIGN KEY (
			rent_item_code -- 상품 코드
		)
		REFERENCES rent_item ( -- 렌탈 상품
			rent_item_code -- 상품 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
	
		
	
	
	
-------------------------------------------------------------------------------------------
	

	

-- 수익 구조 관리
ALTER TABLE P4manage_income
	DROP CONSTRAINT FK_rental_TO_manage_income; -- 렌탈하기 -> 수익 구조 관리

-- 수익 구조 관리
ALTER TABLE P4manage_income
	DROP CONSTRAINT FK_point_TO_manage_income; -- 포인트 -> 수익 구조 관리

-- 수익 구조 관리
ALTER TABLE P4manage_income
	DROP CONSTRAINT FK_memcoupon_TO_manage_income; -- 보유쿠폰 -> 수익 구조 관리

-- 수익 구조 관리
ALTER TABLE P4manage_income
	DROP CONSTRAINT FK_emoney_TO_manage_income; -- E머니 -> 수익 구조 관리

-- 수익 구조 관리
ALTER TABLE P4manage_income
	DROP CONSTRAINT PK_manage_income; -- 수익 구조 관리 기본키

-- 수익 구조 관리
DROP TABLE P4manage_income;

-- 수익 구조 관리
CREATE TABLE P4manage_income (
	manage_code NUMBER NOT NULL, -- 수익 구조 코드
	rental_code NUMBER NOT NULL, -- 렌탈 코드
	point_code  NUMBER NOT NULL, -- 포인트 코드
	memcou_code NUMBER NOT NULL, -- 쿠폰 코드
	emo_code    NUMBER NOT NULL  -- E머니 코드
);

-- 수익 구조 관리 기본키
CREATE UNIQUE INDEX PK_manage_income
	ON manage_income ( -- 수익 구조 관리
		manage_code ASC -- 수익 구조 코드
	);

-- 수익 구조 관리
ALTER TABLE P4manage_income
	ADD
		CONSTRAINT PK_manage_income -- 수익 구조 관리 기본키
		PRIMARY KEY (
			manage_code -- 수익 구조 코드
		);

-- 수익 구조 관리
ALTER TABLE P4manage_income
	ADD
		CONSTRAINT FK_rental_TO_manage_income -- 렌탈하기 -> 수익 구조 관리
		FOREIGN KEY (
			rental_code -- 렌탈 코드
		)
		REFERENCES rental ( -- 렌탈하기
			rental_code -- 렌탈 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 수익 구조 관리
ALTER TABLE P4manage_income
	ADD
		CONSTRAINT FK_point_TO_manage_income -- 포인트 -> 수익 구조 관리
		FOREIGN KEY (
			point_code -- 포인트 코드
		)
		REFERENCES point ( -- 포인트
			point_code -- 포인트 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 수익 구조 관리
ALTER TABLE P4manage_income
	ADD
		CONSTRAINT FK_memcoupon_TO_manage_income -- 보유쿠폰 -> 수익 구조 관리
		FOREIGN KEY (
			memcou_code -- 쿠폰 코드
		)
		REFERENCES memcoupon ( -- 보유쿠폰
			memcou_code -- 쿠폰 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- 수익 구조 관리
ALTER TABLE P4manage_income
	ADD
		CONSTRAINT FK_emoney_TO_manage_income -- E머니 -> 수익 구조 관리
		FOREIGN KEY (
			emo_code -- E머니 코드
		)
		REFERENCES emoney ( -- E머니
			emo_code -- E머니 코드
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		

	
DROP SEQUENCE cou_code_seq;
DROP SEQUENCE cate_code_seq;
DROP SEQUENCE rent_item_code_seq;
DROP SEQUENCE rental_code_seq;
DROP SEQUENCE query_code_seq;
DROP SEQUENCE report_code_seq;
DROP SEQUENCE req_code_seq;
DROP SEQUENCE emo_code_seq;
DROP SEQUENCE memcou_code_seq;
DROP SEQUENCE point_code_seq;
DROP SEQUENCE qna_code_seq;
DROP SEQUENCE faq_code_seq;
DROP SEQUENCE notice_code_seq;
DROP SEQUENCE carou_code_seq;
DROP SEQUENCE alarm_code_seq;
DROP SEQUENCE manage_code_seq;





CREATE SEQUENCE cou_code_seq
	INCREMENT BY 1
	START WITH 11000000;
CREATE SEQUENCE cate_code_seq
	INCREMENT BY 1
	START WITH 12000000;
CREATE SEQUENCE faq_code_seq
	INCREMENT BY 1
	START WITH 13000000;
CREATE SEQUENCE notice_code_seq
	INCREMENT BY 1
	START WITH 14000000;
CREATE SEQUENCE carou_code_seq
	INCREMENT BY 1
	START WITH 15000000;
CREATE SEQUENCE manage_code_seq
	INCREMENT BY 1
	START WITH 16000000;




CREATE SEQUENCE rent_item_code_seq
	INCREMENT BY 1
	START WITH 21000000;
CREATE SEQUENCE rental_code_seq
	INCREMENT BY 1
	START WITH 22000000;
CREATE SEQUENCE query_code_seq
	INCREMENT BY 1
	START WITH 23000000;
CREATE SEQUENCE req_code_seq
	INCREMENT BY 1
	START WITH 24000000;
CREATE SEQUENCE report_code_seq
	INCREMENT BY 1
	START WITH 25000000;




CREATE SEQUENCE emo_code_seq
	INCREMENT BY 1
	START WITH 31000000;
CREATE SEQUENCE memcou_code_seq
	INCREMENT BY 1
	START WITH 32000000;
CREATE SEQUENCE point_code_seq
	INCREMENT BY 1
	START WITH 33000000;
CREATE SEQUENCE qna_code_seq
	INCREMENT BY 1
	START WITH 34000000;
CREATE SEQUENCE alarm_code_seq
	INCREMENT BY 1
	START WITH 35000000;

