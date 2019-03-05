use airport;

insert into customer(code, id, passwd, name, zip_code, address, phone, email) 
               values ('C000', 'C000', password('rootroot'), '탈퇴계정', '00000', '대구', '010-0000-0000', 'abc@gmail.com'),
                     ('C001', 'asd132', password('rootroot'), '김철수', '42189', '대구광역시 수성구  지산로 45', '017-0000-7777', 'abc@gmail.com'),
                     ('C002', 'qwer12', password('root1234'), '이영희', '41456','대구광역시 북구  태전로 7', '010-1111-6666', 'qwer12@naver.com'),
                     ('C003', 'zxcv0523', password('asdfqwer'), '박철민', '42770','대구광역시 달서구  월배로 16', '011-2222-5555', 'zxcv0523@naver.com'),
                     ('C004', 'gtshv512', password('asdf1234'), '이수민', '42900','대구광역시 달성군 하빈면 달구벌대로 77', '010-3333-4444', 'gtshv512@gmail.com'),
                     ('C005', 'gstjsva12', password('zxcv4567'), '나영석', '42677','대구광역시 달서구  당산로 36', '010-4444-3333', 'gstjsva12@daum.net'),
                     ('C006', 'aefvb238', password('qwer2573'), '강호동', '41238','대구광역시 동구  효목로 5 - 4', '017-5555-2222', 'aefvb238@daum.com'),
                     ('C007', 'fkufj12', password('dhtdhd5645'), '김민정', '41086','대구광역시 동구  금강로 8', '017-6666-1111', 'fkufj12@naver.com'),
                     ('C008', 'xbmhw325', password('aggarg54'), '김재영', '41529','대구광역시 북구  복현로 5', '010-1248-5454', 'xbmhw325@daum.com'),
                     ('C009', 'xzcdz', password('abafkr'), '김영희','41857', '대구광역시 서구  서대구로 9', '010-3638-2542', 'xzcdz@gmail.com'),
                     ('C010', 'tuyjjey78645', password('gburiab15'), '최수정','41406', '대구광역시 북구  구리로 17', '010-3638-7868', 'tuyjjey78645@naver.com'),
                     ('C011', 'trdhgnchc45', password('agareag55'), '강고은','42137', '대구광역시 수성구  희망로 91', '011-2545-3634', 'trdhgnchc45@daum.com'),
                     ('C012', 'stgrhs351', password('wefaf1231'), '이보람','41012', '대구광역시 동구  내동로 26 - 9', '010-1235-2528', 'stgrhs351@gmail.com'),
                     ('C013', 'tyjdty825', password('adgrea5213'), '박수정','42479', '대구광역시 남구  대명로 29', '017-2825-5456', 'tyjdty825@naver.com'),         
                     ('C014', 'tydjlv15o', password('tetrh15684'), '최성은','41934', '대구광역시 중구  약령길 76', '011-4587-1455','tydjlv15o@daum.com'),
                     ('C015', 'uktf4512', password('ikutl5648'), '최영민','42187', '대구광역시 수성구  지범로 21', '010-5575-3522', 'uktf4512@naver.com'),
                     ('C016', 'sdtsf3251', password('koyljm656'), '이단아','41706', '대구광역시 서구  달서천로 66', '017-1452-2563', 'sdtsf3251@daum.com'),
                     ('C017', 'retyu423', password('ertytr665'), '박대성','41044', '대구광역시 동구  해동로 9', '010-4785-5896', 'retyu423@naver.com'),
                     ('C018', 'hjrfkn5646', password('wert354'), '도주호','41594', '대구광역시 북구  침산로 31', '017-2575-6353', 'hjrfkn5646@naver.com'),
                     ('C019', 'uyjym231568', password('ukikmk544'), '도경수','41812', '대구광역시 서구  큰장로 35', '017-1456-4534', 'uyjym231568@gmail.com'),
                     ('C020', 'jtysgf891', password('ncyhs12513'), '박현빈','41039', '대구광역시 동구  팔공로 15', '011-1237-7653',  'jtysgf891@naver.com'),
                     ('C021', 'uyjtyd8564', password('qewrref45'), '박신혜','42443', '대구광역시 남구  대덕로 201', '011-8676-9686', 'uyjtyd8564@daum.com'),
                     ('C022', 'jtydjtyd564', password('ertwre354'), '백종원','41752', '대구광역시 서구  북비산로 48 - 2', '010-4538-8653', 'jtydjtyd564@gmail.com'),
                     ('C023', 'uytuil789', password('etryetr154'), '이만기','41444', '대구광역시 북구  관음동로 43', '010-1245-8653', 'uytuil789@gmail.com'),
                     ('C024', 'uuykgh789534', password('rtyur4564'), '박선영','42841', '대구광역시 달서구  앞산순환로 248 ', '010-5868-4511', 'uuykgh789534@gmail.com'),
                     ('C025', 'uyhjtyd44', password('tyuityu4564'), '김영희','41490', '대구광역시 북구  매천로 5', '010-1155-3555','uyhjtyd44@daum.com'),
                     ('C026', 'lkhkhl4564', password('yuioyi123'), '김선주','41252', '대구광역시 동구  화랑로 15', '010-7447-5565', 'lkhkhl4564@naver.com'),
                     ('C027', 'zxcvzxcv456456', password('zxcvz153'), '황성수','42407', '대구광역시 남구  양지로 61', '010-6846-2255', 'zxcvzxcv456456@gmail.com'),
                     ('C028', 'qwerqwer123', password('xcvbxvcb51'), '박지영','42729', '대구광역시 달서구  와룡로 27', '010-1253-1564', 'qwerqwer123@naver.com'),
                     ('C029', 'tuygfku5413', password('cvbncbv21'), '박성원','42743', '대구광역시 달서구  송현로 88 ', '010-7845-5124', 'tuygfku5413@daum.com'),
                     ('C030', 'tuikgh', password('vbnmv15615'), '곽도원','42250', '대구광역시 수성구  월드컵로 2 - 50', '010-2415-2635', 'tuikgh@naver.com'),
                     ('C031', 'ilyi7964', password('bnmnb894'), '강아름','41499', '대구광역시 북구  노원로 9', '010-8520-2580', 'ilyi7964@naver.com'),
                     ('C032', 'tuio78685', password('qweqre4586'), '윤여정','42446', '대구광역시 남구  봉덕로 48', '010-7542-9562', 'tuio78685@gmail.com'),
                     ('C033', 'gikl564', password('wertwe48'), '조여정','41067', '대구광역시 동구  혁신대로 244', '010-0235-3125', 'gikl564@gmail.com'),            
                     ('C034', 'gikg4586', password('dazfdf484'), '이류식','41846', '대구광역시 서구  평리로 172', '010-1235-0000', 'gikg4586@gmail.com'),
                     ('C035', 'cuki151', password('zcvzsdz484'), '김준수','41434', '대구광역시 북구  대천로 3 - 17', '010-8512-7586', 'cuki151@daum.com'),
                     ('C036', 'sthsf15', password('qqwef8632'), '이단아','41922', '대구광역시 중구  태평로 2', '010-0100-3535', 'sthsf15@naver.com'),
                     ('C037', 'q43et', password('hthnnh15'), '박대성','42824', '대구광역시 달서구  송현로 52', '010-3355-6688', 'q43et@gmail.com'),
                     ('C038', 'uargk5131', password('ndhdn687461'), '도주호','42144', '대구광역시 수성구  청솔로 6', '010-7788-9988', 'uargk5131@gmail.com'),
                     ('C039', 'trja51', password('dfFdcv151'), '도경수','42719', '대구광역시 달서구  성서공단로 174 ', '010-4455-1115', 'trja51@gmail.com'),
                     ('C040', 'yueret5531', password('zdvfzg8789'), '박현빈','41541', '대구광역시 북구  연암공원로 14', '010-6320-7514', 'yueret5531@gmail.com'),
                     ('C041', 'twrstn156', password('sgfnhfn123'), '박신혜','42704', '대구광역시 달서구  성서서로 132 ', '017-2288-0425',  'twrstn156@gmail.com'),
                     ('C042', 'wty4615', password('jkurkg451'), '백종원','42679', '대구광역시 달서구  야외음악당로 38 ', '017-1234-3664',  'wty4615@naver.com'),
                     ('C043', 'utsd5456', password('kufyjfy7251'), '이만기','41078', '대구광역시 동구  경안로 750', '011-8944-6932',  'utsd5456@daum.com'),
                     ('C044', 'ewfarga121', password('q3ewfzea'), '박선영','41751', '대구광역시 서구  새방로 129', '017-5649-0000', 'ewfarga121@naver.com'),
                     ('C045', 'vfbf1541', password('xgfbht1515'), '김영희','42603', '대구광역시 달서구  선원로 7', '011-5164-1511',  'vfbf1541@naver.com'),
                     ('C046', 'psw2701', password('123456789'), '박수완','42603', '대구광역시 달서구  선원로 7', '010-5155-2701', 'psw2701@naver.com');                            

insert into airport.airport(code, name) values('ICN','인천국제공항' ),
                              ('GMP', '김포국제공항'),
                              ('YNY', '양양국제공항'),
                              ('WJU', '원주공항'),
                              ('TAE', '대구국제공항'),
                              ('CJJ', '청주국제공항'),
                              ('KPO', '포항공항'),
                              ('PUS', '김해국제공항'),
                              ('CJU', '제주국제공항'),
                              ('HIN', '사천공항'),
                              ('USN', '울산공항'),
                              ('MWX', '무안국제공항'),
                              ('KWJ', '광주공항'),
                              ('KUV', '군산공항'),
                              ('RSU', '여수공항');
                             
insert into manager(code, name, id, passwd, phone, email) 
			values('M001', '나직원', 'qwerqwerqwer', password('rootroot'), '010-5858-6565', 'qwerqwerqwer@naver.com'),
					('M002', '너직원', 'qqqq', password('123456789'), '011-5454-8787', 'qqqq@daum.net');
				
				
INSERT INTO notice (title, content, reg_date, view_cnt, file, is_notice, manager_code)
VALUES('공지사항1', '공지사항', sysdate(), 0, null, 1, 'M001'),
('공지사항2', '공지사항', sysdate(), 0, null, 1, 'M002'),
('공지사항3', '공지사항', sysdate(), 0, null, 1, 'M001'),
('공지사항4', '공지사항', sysdate(), 0, null, 1, 'M001'),
('공지사항5', '공지사항', sysdate(), 0, null, 1, 'M002'),
('공지1', '공지사항', sysdate(), 0, null, 0, 'M002'),
('공지2', '공지사항', sysdate(), 0, null, 0, 'M002'),
('공지3', '공지사항', sysdate(), 0, null, 0, 'M001'),
('공지4', '공지사항', sysdate(), 0, null, 0, 'M001'),
('공지5', '공지사항', sysdate(), 0, null, 0, 'M002'),
('공지6', '공지사항', sysdate(), 0, null, 0, 'M002'),
('공지7', '공지사항', sysdate(), 0, null, 0, 'M001');


INSERT INTO board
(title, content, required, `open`, reg_date, view_cnt, progress, customer_code, airport_code, reply_cnt)
VALUES('고객1', '내용입니다', 0, 1, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객2', '내용입니다', 0, 1, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객3', '내용입니다', 0, 1, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객4', '내용입니다', 0, 1, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객5', '내용입니다', 0, 1, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리1', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리2', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리3', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리4', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리5', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리6', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리7', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리8', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리9', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0),
('고객의 소리10', '내용입니다', 0, 0, sysdate(), 0, '처리중', 'C001', 'GMP', 0);



