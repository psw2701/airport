-- ����
DROP SCHEMA IF EXISTS airport;

-- ����
CREATE SCHEMA airport;

-- �Խ���
CREATE TABLE airport.board (
	no              INT         NOT NULL COMMENT '�Խ��ǹ�ȣ', -- �Խ��ǹ�ȣ
	title           TEXT        NOT NULL COMMENT '����', -- ����
	content         TEXT        NOT NULL COMMENT '����', -- ����
	answer_required TINYINT(1)  NOT NULL COMMENT '�亯�ʿ俩��', -- �亯�ʿ俩��
	open            TINYINT(1)  NOT NULL COMMENT '��������', -- ��������
	reg_date        DATE        NOT NULL COMMENT '�����', -- �����
	view_cnt        INT         NOT NULL COMMENT '��ȸ��', -- ��ȸ��
	progress        VARCHAR(40) NOT NULL COMMENT 'ó����Ȳ', -- ó����Ȳ
	file            TEXT        NULL     COMMENT '÷������', -- ÷������
	customer_code   CHAR(4)     NOT NULL COMMENT '����ȣ', -- ����ȣ
	airport_code    CHAR(3)     NOT NULL COMMENT '�����ڵ�' -- �����ڵ�
)
COMMENT '�Խ���';

-- �Խ���
ALTER TABLE airport.board
	ADD CONSTRAINT PK_board -- �Խ��� �⺻Ű
		PRIMARY KEY (
			no -- �Խ��ǹ�ȣ
		);

-- ��
CREATE TABLE airport.customer (
	code     CHAR(4)     NOT NULL COMMENT '����ȣ', -- ����ȣ
	name     VARCHAR(20) NOT NULL COMMENT '�̸�', -- �̸�
	id       VARCHAR(40) NOT NULL COMMENT '���̵�', -- ���̵�
	password CHAR(42)    NOT NULL COMMENT '��й�ȣ', -- ��й�ȣ
	phone    VARCHAR(13) NOT NULL COMMENT '�޴���ȭ', -- �޴���ȭ
	zip_code CHAR(5)     NOT NULL COMMENT '�����ȣ', -- �����ȣ
	address  VARCHAR(50) NOT NULL COMMENT '�ּ�', -- �ּ�
	email    VARCHAR(30) NOT NULL COMMENT '�̸���', -- �̸���
	isCustom TINYINT(1)  NOT NULL COMMENT '����' -- ����
)
COMMENT '��';

-- ��
ALTER TABLE airport.customer
	ADD CONSTRAINT PK_customer -- �� �⺻Ű
		PRIMARY KEY (
			code -- ����ȣ
		);

-- �亯
CREATE TABLE airport.answer (
	no          INT     NOT NULL COMMENT '�亯��ȣ', -- �亯��ȣ
	content     TEXT    NOT NULL COMMENT '�亯����', -- �亯����
	answer_date DATE    NOT NULL COMMENT '�亯��', -- �亯��
	board_no    INT     NOT NULL COMMENT '�Խ��ǹ�ȣ', -- �Խ��ǹ�ȣ
	manager_no  CHAR(4) NOT NULL COMMENT '�������ڵ�' -- �������ڵ�
)
COMMENT '�亯';

-- �亯
ALTER TABLE airport.answer
	ADD CONSTRAINT PK_answer -- �亯 �⺻Ű
		PRIMARY KEY (
			no -- �亯��ȣ
		);

-- ������
CREATE TABLE airport.manager (
	manager_no CHAR(4)     NOT NULL COMMENT '�������ڵ�', -- �������ڵ�
	name       VARCHAR(20) NOT NULL COMMENT '������ �̸�' -- ������ �̸�
)
COMMENT '������';

-- ������
ALTER TABLE airport.manager
	ADD CONSTRAINT PK_manager -- ������ �⺻Ű
		PRIMARY KEY (
			manager_no -- �������ڵ�
		);

-- ����
CREATE TABLE airport.airport (
	code CHAR(3)     NOT NULL COMMENT '�����ڵ�', -- �����ڵ�
	name VARCHAR(40) NOT NULL COMMENT '���׸�' -- ���׸�
)
COMMENT '����';

-- ����
ALTER TABLE airport.airport
	ADD CONSTRAINT PK_airport -- ���� �⺻Ű
		PRIMARY KEY (
			code -- �����ڵ�
		);

-- ��������
CREATE TABLE airport.notice (
	no         INT     NOT NULL COMMENT '�������׹�ȣ', -- �������׹�ȣ
	title      TEXT    NOT NULL COMMENT '��������', -- ��������
	content    TEXT    NOT NULL COMMENT '��������', -- ��������
	reg_date   DATE    NOT NULL COMMENT '������', -- ������
	view_cnt   INT     NOT NULL COMMENT '��ȸ��', -- ��ȸ��
	file       TEXT    NULL     COMMENT '÷������', -- ÷������
	manager_no CHAR(4) NOT NULL COMMENT '�������ڵ�' -- �������ڵ�
)
COMMENT '��������';

-- ��������
ALTER TABLE airport.notice
	ADD CONSTRAINT PK_notice -- �������� �⺻Ű
		PRIMARY KEY (
			no -- �������׹�ȣ
		);

-- �Խ���
ALTER TABLE airport.board
	ADD CONSTRAINT FK_customer_TO_board -- �� -> �Խ���
		FOREIGN KEY (
			customer_code -- ����ȣ
		)
		REFERENCES airport.customer ( -- ��
			code -- ����ȣ
		);

-- �Խ���
ALTER TABLE airport.board
	ADD CONSTRAINT FK_airport_TO_board -- ���� -> �Խ���
		FOREIGN KEY (
			airport_code -- �����ڵ�
		)
		REFERENCES airport.airport ( -- ����
			code -- �����ڵ�
		);

-- �亯
ALTER TABLE airport.answer
	ADD CONSTRAINT FK_board_TO_answer -- �Խ��� -> �亯
		FOREIGN KEY (
			board_no -- �Խ��ǹ�ȣ
		)
		REFERENCES airport.board ( -- �Խ���
			no -- �Խ��ǹ�ȣ
		);

-- �亯
ALTER TABLE airport.answer
	ADD CONSTRAINT FK_manager_TO_answer -- ������ -> �亯
		FOREIGN KEY (
			manager_no -- �������ڵ�
		)
		REFERENCES airport.manager ( -- ������
			manager_no -- �������ڵ�
		);

-- ��������
ALTER TABLE airport.notice
	ADD CONSTRAINT FK_manager_TO_notice -- ������ -> ��������
		FOREIGN KEY (
			manager_no -- �������ڵ�
		)
		REFERENCES airport.manager ( -- ������
			manager_no -- �������ڵ�
		);