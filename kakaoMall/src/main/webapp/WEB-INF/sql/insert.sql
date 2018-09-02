insert into product_info values('aaaa1','프렌즈랜드 캐슬 브릭','45000','99','라이언이 지키고 있는 프렌즈 랜드 캐슬 브릭은 417개 피스로 구성되었습니다.
뚝딱뚝딱~ 튼튼한 프렌즈 캐슬을 직접 지어보세요!
캐슬 내부도 아기자기하게 꾸밀 수 있어요.');
insert into product_info values('aaaa2','프렌즈랜드카드지갑-라이언','15000','10','한 손에 딱 들어오는 크기의 카드지갑입니다.');
insert into product_info values('aaaa3','프렌즈랜드 미니인형_어피치','12000','80',
'놀이공원 갈 때 이만큼 멋 안내는 프렌즈 있어요?  
우리의 프렌즈들은 과즙미 팡팡! 풍기며 각자의 큐트 포인트로 무장했답니다.');
insert into product_info values('aaaa4','레인보우_리틀튜브인형','29000','80','비오는 여름날도 즐겁게! 초특급 귀요미 리틀레인보우 프렌즈와 함께해요~
귀여운 우비와 장화를 신으면 비가 와도 발랄한 리틀프렌즈의 행복한 레이니데이!');
insert into product_info values('aaaa5','스마일_리틀라이언 메세지 인형','27000','70','특별한 날 마음을 전하는 특별한 방법! 리틀프렌즈 메시지인형이 도와줄게요~
라이언의 손과 메시지 카드에 자석이 있어 붙였다 떼었다 할 수 있어요.');
insert into product_info values('aaaa6','스마일_핸드퍼펫 네오','17000','70','
카카오프렌즈 핸드퍼펫! 손인형이 출시되었어요
손에 쏙 끼워 프렌즈에게 목소리와 움직임을 더해주세요.
아이들에게 동화책을 읽어주거나 역할 놀이를 할 때도 활용할 수 있어요');
insert into product_info values('aaaa7','콘열쇠고리','10000','100','콘 열쇠고리입니다.');

insert into product_images values('aaaa1','product1_1','product1_2','product1_3','product1_4','product1_5');
insert into product_images values('aaaa2','product2_1','product2_2','product2_3','product2_4','product2_5');
insert into product_images values('aaaa3','product3_1','product3_2','product3_3','product3_4','product3_5');
insert into product_images values('aaaa4','product4_1','product4_2','product4_3','product4_4','product4_5');
insert into product_images values('aaaa5','product5_1','product5_2','product5_3','product5_4','product5_5');
insert into product_images values('aaaa6','product6_1','product6_2','product6_3','product6_4','product6_5');
insert into product_images values('aaaa7','product7_1','product7_2','product7_3','product7_4','product7_5');
insert into product_images values('aaaa8','product8_1','product8_2','product8_3','product8_4','product8_5');
insert into product_images values('aaaa9','product9_1','product9_2','product9_3','product9_4','product9_5');
insert into product_images values('aaaa10','product10_1','product10_2','product10_3','product10_4','product10_5');

select a.code,b.img1 from product_info a inner join product_images b on a.code=b.code 


select * from product_info;
