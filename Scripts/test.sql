use airport;

select * from manager;

insert into manager (code, name) values('M001', '나직원');

select* from customer;

select * from customer order by code;

delete from customer where code='C002';

select * from customer where code='C001';

	update customer
		set passwd = password('123456789'), zip_code ='13211', address ='대구', phone ='010-5151-1212', email = 'abc@naver.com';
		where code = 'C001'

insert into customer(code, id, passwd, name, zip_code, address, phone,  email) values('C001', 'asd132', password('rootroot'), '김철수', '42189', '대구광역시 수성구  지산로 45', '017-0000-7777',  'abc@gmail.com' );


select concat('C',lpad(max(right(code,3)+1),3,'0'))  from customer;


	select Id as id from customer
		where name = '아이유'
		and email =	'abc123@daum.net';
		
select concat( char(rand()*26 + 65) , round(rand() * 100), char(rand()*26 + 65), char(rand()*26 + 65) , round(rand() * 100), char(rand()*26 + 65)) as randomPwd;


select * from customer
where passwd = '';

select * from board;

insert into board(title, content, required, open, progress, customer_code, airport_code )
		values('게시물입니다.', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.2', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.3', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.4', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.5', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.6', '내용', true, true, '접수', 'C001','YNY');
		
	insert into board(title, content, required, open, progress, customer_code, airport_code )
		values('게시물입니다.', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.2', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.3', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.4', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.5', '내용', true, true, '접수', 'C001','YNY'),
				('게시물입니다.6', '내용', true, true, '접수', 'C001','YNY');
		
select * from board 
		where no=1;	
		
update board 
		set title='수정게시물입니다.', content='수정내용', airport_code='TAE', open=false, required=false
		where no=1;	
		
update board 
		set view_cnt=view_cnt+1
		where no=1;	

delete from board where no=1;	

select * from board order by no desc;

select * from board order by no desc
		limit 1, 10
		
select count(no)
		from board;		
		
update board set reply_cnt = reply_cnt +1 where no=1;	

insert into attach(fullname, no) values('파일이름', LAST_INSERT_ID());

select * from attach;

select fullname from attach where no=1 order by reg_date;

delete from attach where no=1 and fullname='파일이름';

insert into attach(fullname, no) values ('파일이름1', 1);

select * from board order by no desc limit 0,10;


select * from board order by no desc limit 0, 10;


select * from board left join customer 
on customer.code=board.customer_code
left join airport
on customer.code=airport.code
where no = 3;

select * from manager;

insert into manager(code, name, id, passwd, phone, email) values('M001', '나직원', 'qwerqwerqwer', password('rootroot'), '010-5858-6565', 'qwerqwerqwer@naver.com');

select * from board 
left join customer on customer.code=board.customer_code
left join airport on customer.code=airport.code
		where no=1;


select * from notice order by no desc;

insert into notice (title, content,is_notice, manager_code) values('공지사항입니다.', '내용입니다.', false, 'M001');


select * from notice
		left join manager on manager.code=notice.manager_code
		order by no desc
		limit 1, 1;

	select * from manager  
		where id = 'qwerqwerqwer' and passwd = password('rootroot')
		
select * from notice
left join manager on manager.code=notice.manager_code
		where no=1;
		
	
update notice 
set title=#{title}, content=#{content},is_notice=#{isNotice}
		where no = #{no}	
		
		
insert into notice(title, content, writer)
(select title, content, writer from tbl_board);	


select * from notice
where is_notice = 1;

select * from notice
where is_notice =0;

select * from notice
left join manager on manager.code=notice.manager_code
	where is_notice = 1
	order by no desc
	
select * from board;

select * from board
where open = 1

select * from notice;
order by no desc;

update notice 
set title='수정', content='수정',is_notice=true
where no = 12;


select *from notice;

insert into notice(title, content, reg_date, view_cnt, file, is_notice, manager_code)
(select title, content, reg_date, view_cnt, file, is_notice, manager_code from notice);


select * from reply;

INSERT INTO airport.reply
(content, reg_date, title, bno, manager_code)
VALUES('답변', sysdate(), '답변제목', 1, 'M001');

select * from board;
select * from reply
left join manager on reply.manager_code = manager.code
where bno = ;

select * from reply;


select * from reply
left join manager on reply.manager_code = manager.code
where bno = 15;


select * from board
left join reply on board.no = reply.bno
where bno = 1;

select * from reply where no = 15;

select * from reply 
		left join reply on 
		where bno=1;
		
INSERT INTO airport.reply
(content, reg_date, title, is_reply, bno, manager_code)
VALUES('답변', sysdate(), '답변제목', 1, 1, 'M001');


DELETE FROM reply
WHERE `no`=0;

select * from board 
left join customer on customer.code=board.customer_code
left join airport on customer.code=airport.code
		where no=1;


select * from board
left join customer on customer.code=board.customer_code
left join reply on board.no=reply.bno
order by board.no desc;

select * from reply;


	select * from board
	
UPDATE board
SET progress='답변완료'
WHERE `no`=15;

		left join reply on board.no = reply.bno
		where bno=15;
		
	delete from reply where bno = 1;
	
select passwd = password('123456789') as samePwd from customer where Id = 'psw2701';

select passwd = password('rootroot') as samePwd from customer where Id = 'asd132';

select * from customer where Id= 'asd132' and  password('rootroot') = passwd;

select * from customer;