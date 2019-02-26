-- 공항
DROP SCHEMA IF EXISTS airport;

-- 공항
CREATE SCHEMA airport;

-- 게시판
CREATE TABLE airport.board (
	no            INT         NOT NULL COMMENT '게시판번호', -- 게시판번호
	title         TEXT        NOT NULL COMMENT '제목', -- 제목
	content       TEXT        NOT NULL COMMENT '내용', -- 내용
	required      TINYINT(1)  NOT NULL COMMENT '답변필요여부', -- 답변필요여부
	open          TINYINT(1)  NOT NULL COMMENT '공개여부', -- 공개여부
	reg_date      TIMESTAMP   NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
	view_cnt      INT         NOT NULL DEFAULT 0 COMMENT '조회수', -- 조회수
	progress      VARCHAR(40) NOT NULL DEFAULT '처리중' COMMENT '처리현황', -- 처리현황
	customer_code CHAR(4)     NOT NULL COMMENT '고객번호', -- 고객번호
	airport_code  CHAR(3)     NOT NULL COMMENT '공항코드', -- 공항코드
	reply_cnt     INT         NOT NULL DEFAULT 0 COMMENT '댓글수' -- 댓글수
)
COMMENT '게시판';

-- 게시판
ALTER TABLE airport.board
	ADD CONSTRAINT PK_board -- 게시판 기본키
		PRIMARY KEY (
			no -- 게시판번호
		);

ALTER TABLE airport.board
	MODIFY COLUMN no INT NOT NULL AUTO_INCREMENT COMMENT '게시판번호';

ALTER TABLE airport.board
	AUTO_INCREMENT = 1;

-- 고객
CREATE TABLE airport.customer (
	code     CHAR(4)     NOT NULL COMMENT '고객번호', -- 고객번호
	name     VARCHAR(20) NOT NULL COMMENT '이름', -- 이름
	id       VARCHAR(40) NOT NULL COMMENT '아이디', -- 아이디
	passwd   CHAR(42)    NOT NULL COMMENT '비밀번호', -- 비밀번호
	phone    VARCHAR(13) NOT NULL COMMENT '휴대전화', -- 휴대전화
	zip_code CHAR(5)     NOT NULL COMMENT '우편번호', -- 우편번호
	address  VARCHAR(50) NOT NULL COMMENT '주소', -- 주소
	email    VARCHAR(30) NOT NULL COMMENT '이메일' -- 이메일
)
COMMENT '고객';

-- 고객
ALTER TABLE airport.customer
	ADD CONSTRAINT PK_customer -- 고객 기본키
		PRIMARY KEY (
			code -- 고객번호
		);

-- 답변
CREATE TABLE airport.reply (
	no           INT       NOT NULL COMMENT '답변번호', -- 답변번호
	content      TEXT      NOT NULL COMMENT '답변내용', -- 답변내용
	reg_date     TIMESTAMP NOT NULL DEFAULT now() COMMENT '답변일', -- 답변일
	title        TEXT      NOT NULL COMMENT '답변제목', -- 답변제목
	bno          INT       NOT NULL COMMENT '게시판번호', -- 게시판번호
	manager_code CHAR(4)   NOT NULL COMMENT '관리자코드' -- 관리자코드
)
COMMENT '답변';

-- 답변
ALTER TABLE airport.reply
	ADD CONSTRAINT PK_reply -- 답변 기본키
		PRIMARY KEY (
			no -- 답변번호
		);

ALTER TABLE airport.reply
	MODIFY COLUMN no INT NOT NULL AUTO_INCREMENT COMMENT '답변번호';

ALTER TABLE airport.reply
	AUTO_INCREMENT = 1;

-- 관리자
CREATE TABLE airport.manager (
	code   CHAR(4)     NOT NULL COMMENT '관리자코드', -- 관리자코드
	name   VARCHAR(20) NOT NULL COMMENT '이름', -- 이름
	id     VARCHAR(40) NOT NULL COMMENT '아이디', -- 아이디
	passwd CHAR(42)    NOT NULL COMMENT '비밀번호', -- 비밀번호
	phone  VARCHAR(13) NOT NULL COMMENT '휴대전화', -- 휴대전화
	email  VARCHAR(30) NOT NULL COMMENT '이메일' -- 이메일
)
COMMENT '관리자';

-- 관리자
ALTER TABLE airport.manager
	ADD CONSTRAINT PK_manager -- 관리자 기본키
		PRIMARY KEY (
			code -- 관리자코드
		);

-- 공항
CREATE TABLE airport.airport (
	code CHAR(3)     NOT NULL COMMENT '공항코드', -- 공항코드
	name VARCHAR(40) NOT NULL COMMENT '공항명' -- 공항명
)
COMMENT '공항';

-- 공항
ALTER TABLE airport.airport
	ADD CONSTRAINT PK_airport -- 공항 기본키
		PRIMARY KEY (
			code -- 공항코드
		);

-- 공지사항
CREATE TABLE airport.notice (
	no           INT        NOT NULL COMMENT '공지사항번호', -- 공지사항번호
	title        TEXT       NOT NULL COMMENT '공지제목', -- 공지제목
	content      TEXT       NOT NULL COMMENT '공지내용', -- 공지내용
	reg_date     TIMESTAMP  NOT NULL DEFAULT now() COMMENT '공지일', -- 공지일
	view_cnt     INT        NOT NULL DEFAULT 0 COMMENT '조회수', -- 조회수
	file         TEXT       NULL     COMMENT '첨부파일', -- 첨부파일
	is_notice    TINYINT(1) NOT NULL COMMENT '구분', -- 구분
	manager_code CHAR(4)    NOT NULL COMMENT '관리자코드' -- 관리자코드
)
COMMENT '공지사항';

-- 공지사항
ALTER TABLE airport.notice
	ADD CONSTRAINT PK_notice -- 공지사항 기본키
		PRIMARY KEY (
			no -- 공지사항번호
		);

ALTER TABLE airport.notice
	MODIFY COLUMN no INT NOT NULL AUTO_INCREMENT COMMENT '공지사항번호';

ALTER TABLE airport.notice
	AUTO_INCREMENT = 1;

-- 게시판첨부
CREATE TABLE airport.board_attach (
	fullName VARCHAR(150) NOT NULL COMMENT '이름', -- 이름
	reg_date TIMESTAMP    NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
	no       INT          NOT NULL COMMENT '게시판번호' -- 게시판번호
)
COMMENT '게시판첨부';

-- 게시판첨부
ALTER TABLE airport.board_attach
	ADD CONSTRAINT PK_board_attach -- 게시판첨부 기본키
		PRIMARY KEY (
			fullName -- 이름
		);

-- 요청매개변수
CREATE TABLE airport.req_parameter (
	schAirCode  CHAR(3)    NOT NULL COMMENT '공항코드', -- 공항코드
	schStTime   INT        NOT NULL COMMENT '예정시간', -- 예정시간
	schEdTime   INT        NOT NULL COMMENT '변경시간', -- 변경시간
	schLineType TINYINT(1) NOT NULL COMMENT '항공편종류', -- 항공편종류
	schOType    TINYINT(1) NOT NULL COMMENT '운행타입' -- 운행타입
)
COMMENT '요청매개변수';

-- 공지사항첨부
CREATE TABLE airport.notice_attach (
	fullName VARCHAR(150) NOT NULL COMMENT '이름', -- 이름
	reg_date TIMESTAMP    NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
	no       INT          NOT NULL COMMENT '공지사항번호' -- 공지사항번호
)
COMMENT '공지사항첨부';

-- 공지사항첨부
ALTER TABLE airport.notice_attach
	ADD CONSTRAINT PK_notice_attach -- 공지사항첨부 기본키
		PRIMARY KEY (
			fullName -- 이름
		);

-- 게시판
ALTER TABLE airport.board
	ADD CONSTRAINT FK_customer_TO_board -- 고객 -> 게시판
		FOREIGN KEY (
			customer_code -- 고객번호
		)
		REFERENCES airport.customer ( -- 고객
			code -- 고객번호
		);

-- 게시판
ALTER TABLE airport.board
	ADD CONSTRAINT FK_airport_TO_board -- 공항 -> 게시판
		FOREIGN KEY (
			airport_code -- 공항코드
		)
		REFERENCES airport.airport ( -- 공항
			code -- 공항코드
		);

-- 답변
ALTER TABLE airport.reply
	ADD CONSTRAINT FK_board_TO_reply -- 게시판 -> 답변
		FOREIGN KEY (
			bno -- 게시판번호
		)
		REFERENCES airport.board ( -- 게시판
			no -- 게시판번호
		);

-- 답변
ALTER TABLE airport.reply
	ADD CONSTRAINT FK_manager_TO_reply -- 관리자 -> 답변
		FOREIGN KEY (
			manager_code -- 관리자코드
		)
		REFERENCES airport.manager ( -- 관리자
			code -- 관리자코드
		);

-- 공지사항
ALTER TABLE airport.notice
	ADD CONSTRAINT FK_manager_TO_notice -- 관리자 -> 공지사항
		FOREIGN KEY (
			manager_code -- 관리자코드
		)
		REFERENCES airport.manager ( -- 관리자
			code -- 관리자코드
		);

-- 게시판첨부
ALTER TABLE airport.board_attach
	ADD CONSTRAINT FK_board_TO_board_attach -- 게시판 -> 게시판첨부
		FOREIGN KEY (
			no -- 게시판번호
		)
		REFERENCES airport.board ( -- 게시판
			no -- 게시판번호
		);

-- 요청매개변수
ALTER TABLE airport.req_parameter
	ADD CONSTRAINT FK_airport_TO_req_parameter -- 공항 -> 요청매개변수
		FOREIGN KEY (
			schAirCode -- 공항코드
		)
		REFERENCES airport.airport ( -- 공항
			code -- 공항코드
		);

-- 공지사항첨부
ALTER TABLE airport.notice_attach
	ADD CONSTRAINT FK_notice_TO_notice_attach -- 공지사항 -> 공지사항첨부
		FOREIGN KEY (
			no -- 공지사항번호
		)
		REFERENCES airport.notice ( -- 공지사항
			no -- 공지사항번호
		);