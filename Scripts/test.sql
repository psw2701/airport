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