------------------------------ INSERT ------------------------------
--member
INSERT INTO member 
VALUES ('uni1', '1111', '신혜원', '010-1234-5678', 'uni1@gmail.com','집','11101','대한민국','서울','공항대로 12','103-1203');

INSERT INTO member 
VALUES ('uni2', '2222', '신지원', '010-5555-5678', 'uni2@gmail.com',null,null,null,null,null,null);

INSERT INTO member 
VALUES ('uni3', '3333', '김민정', '010-1111-5666', 'uni3@gmail.com',null,null,null,null,null,null);

INSERT INTO member 
VALUES ('uni4', '4444', '신지수', '010-1111-5678', 'uni4@gmail.com',null,null,null,null,null,null);



--question
INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '질문이요', '배송', sysdate, '처리중', '오늘 오후 1시 전에 주문하면 모레에 도착할까요???', 'uni1');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '품절제품 입고 계획', '상품', '2020-10-09', '완료', '마음에 드는 레깅스 제품이 있는데 어제 품절 됐더라고요 ㅠㅠㅠ 재입고 계획 있으신가요 ㅠㅠ', 'uni1');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '제품에 하자가 있어요', '교환/환불', sysdate, '처리중', '제품에 구멍이 나있어요 교환하려고 하는데 어떻게 해야 하나요??', 'uni2');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '질문이요', '상품', '2020-09-29', '완료', '신상품 출시가 언제인가요??', 'uni2');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '세일관련 질문이요', '이벤트', sysdate, '처리중', '신상품 세일 이벤트 한다는데 최대 몇 % 세일인가요???', 'uni3');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '배송 질문이요', '배송', '2020-09-12', '완료', '5일전에 주문했는데 아직까지 배송이 안옵니다. 어떤 문제가 생긴거죠???', 'uni3');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '사이즈 문의', '상품', sysdate, '처리중', '평소에 m사이즈 코트를 입는데 쇼트코트는 어떤 사이즈로 구매하면 되나요??', 'uni4');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '환분문의', '교환/환불', '2020-08-29', '완료', '제가 원하는 색상은 없어서 다른 색상으로 주문하긴 했는데 마음에 들지 않아요.. 환불하려는데 어떻게 하면 되나요??', 'uni4');

commit;



--div_code
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('1', 'M', '남자', 'T', '상의', 'SH', '티셔츠');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('2', 'M', '남자', 'T', '상의', 'KN', '니트');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('3', 'M', '남자', 'T', '상의', 'OT', '아우터');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('4', 'M', '남자', 'B', '하의', 'SP', '반바지');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('5', 'M', '남자', 'B', '하의', 'LP', '긴바지');

INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('6', 'F', '여자', 'T', '상의', 'SH', '티셔츠');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('7', 'F', '여자', 'T', '상의', 'KN', '니트');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('8', 'F', '여자', 'T', '상의', 'OT', '아우터');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('9', 'F', '여자', 'B', '하의', 'SK', '스커트');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('10', 'F', '여자', 'B', '하의', 'LP', '긴바지');

COMMIT;


--product

/*

189개

M T OT 26
M T SH 15
M T KN 15
남자 반바지 M B SP 11
남자 긴바지 M B LP 22

여자 아우터 F T OT 23
여자 티셔츠 F T SH  17
여자 니트 F T KN  21
여자 스커트 F B SK 15
여자 긴바지 F B LP 24
*/

/*
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ();

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('', '', '', , 'F', 'T', 'OT', '_1.png', '_2.png', '_3.png', '_4.png', '_5.png');
*/


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--남자 아우터 M-T-OT

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134054&displayNo=NQ1A01A10A01&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429284', '울트라라이트다운컴팩트재킷', '얇고 가벼우면서 따뜻하여 이너 다운으로도 연출 가능한 울트라 라이트 다운 컴팩트 재킷.
· 포켓터블 사양.
· 가벼운 물방울을 튕겨내는 내구 발수 가공 추가.
· V넥 네크 라인으로 변경 가능한 2WAY 사양.', 69900, 'M', 'T', 'OT', '429284_1.png', '429284_2.png', '429284_3.png', '429284_4.png', '429284_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134740&displayNo=NQ1A01A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429290', '하이브리드다운파카', '고품질 다운과 기능성 안솜의 하이브리드 구조로 가볍고 따뜻하면서 깔끔한 실루엣을 자랑하는 하이브리드 다운 파카.
· 다운과 흡습 발열* 안솜을 사용하여 높은 발열성과 보온력 실현.
· 가벼운 물방울을 튕겨내는 내구 발수 가공 추가.
· 640필 파워* 이상의 고품질 다운 사용.
· 가슴 포켓 추가.
· 젖은 손으로도 열고 닫기 편한 오리지널 지퍼 사용.', 129000, 'M', 'T', 'OT', '429290_1.png', '429290_2.png', '429290_3.png', '429290_4.png', '429290_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134742&displayNo=NQ1A01A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429292', '하이브리드다운코트', '고품질 다운과 기능성 중면의 하이브리드 구조로 가볍고 따뜻하면서도 깔끔한 실루엣을 연출할 수 있는 하이브리드 다운 코트.
· 다운과 흡습 발열* 안솜을 사용하여 높은 발열성과 보온력 실현.
· 가벼운 물방울을 튕겨내는 내구 발수 가공 추가.
· 640필 파워* 이상의 고품질 다운 사용.
· 탈부착 가능한 후드 사양.
· 젖은 손으로도 열고 닫기 편한 오리지널 지퍼 사용.
· 블라인드 후크라 불리는 고급스러운 스냅 버튼 사용.', 129000, 'M', 'T', 'OT', '429292_1.png', '429292_2.png', '429292_3.png', '429292_4.png', '429292_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134741&displayNo=NQ1A01A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429291', '심리스다운파카', '심리스 타입으로 고급스러운 인상을 주는 심리스 다운 파카(3D CUT).
· 가벼운 물방울을 튕겨내는 내구 발수 가공 추가.
· 640필 파워* 이상의 고품질 다운 사용.
· 어깨 부분 패턴을 3D 구조로 디자인하여 활동성 업.', 169000, 'M', 'T', 'OT', '429291_1.png', '429291_2.png', '429291_3.png', '429291_4.png', '429291_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31123231&displayNo=NQ1A01A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('419990', '심리스다운코트', '따뜻한 착용감뿐만 아니라 깔끔한 인상을 주는 심리스 다운 코트.
· 내구 발수, 방풍 기능.
· 탈부착 가능한 후드 사양.
· 기장을 길게 설정.', 179000, 'M', 'T', 'OT', '419990_1.png', '419990_2.png', '419990_3.png', '419990_4.png', '419990_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31124517&displayNo=NQ1A01A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422225', '울트라라이트다운볼륨재킷', '탄력감과 볼륨감을 높인 울트라라이트 다운 볼륨 재킷.
· 내구발수 가공 처리.
· 포켓터블 사양.
· 볼륨 실루엣.
· 넥 상단 버튼 추가.', 79900, 'M', 'T', 'OT', '422225_1.png', '422225_2.png', '422225_3.png', '422225_4.png', '422225_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134739&displayNo=NQ1A01A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429282', '울트라라이트다운파카', '얇고 가벼우면서도 따뜻한 착용감을 자랑하는 울트라 라이트 다운 파카.
· 가벼운 물방울을 튕겨내는 내구 발수 가공 추가.
· 포켓터블 사양.
· 안감은 정전기 억제 가공 추가.
· 왼쪽 내측 하단에 포켓 파우치를 걸어둘 수 있는 루프 추가.
· V자형 퀼트 디자인.', 89900, 'M', 'T', 'OT', '429282_1.png', '429282_2.png', '429282_3.png', '429282_4.png', '429282_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135833&displayNo=NQ1A01A10A15&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('435416', '더블페이스더플코트(패턴)', '영국 전통의 더플 코트 디자인을 현대적으로 재해석한 더블페이스 더플 코트.
유니클로의 심플한 고품질 옷에 JW ANDERSON의 혁신적인 디자인이 더해진 라이프웨어를 만나보세요!
· 두께감이 있으면서도 가벼운 착용감을 양립한 더블페이스 소재를 사용하였습니다.
· 안감은 겉감의 글렌 체크 무늬에 어울리는 다크 브라운 컬러를 채용하였습니다.
· JWA 로고의 전환과 빈티지 더플 코트에서 영감을 받은 디테일이 디자인의 포인트!
· 빈티지 디자인을 참고하여 무릎 기장, 다소 여유가 있는 실루엣으로 설정하였습니다.', 149000, 'M', 'T', 'OT', '435416_1.png', '435416_2.png', '435416_3.png', '435416_4.png', '435416_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134745&displayNo=NQ1A01A10A15&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429297', '울캐시미어체스터필드코트', '고급스럽고 아름다운 인상을 주면서도 따뜻한 착용감을 자랑하는 울 캐시미어 체스터 필드 코트.
· 울 X 캐시미어 혼합 소재 사용.
· 직물의 밀도와 표면의 기모감을 수정하여 고급스러운 감촉 실현.
· 펜슬 실루엣.', 169000, 'M', 'T', 'OT', '429297_1.png', '429297_2.png', '429297_3.png', '429297_4.png', '429297_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134747&displayNo=NQ1A01A10A15&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432809', '발마칸코트', '고급스러운 인상을 주면서도 여유감 있는 실루엣이 멋스러운 발마칸 코트.
· 울 소재의 단점을 보완하여 가볍고 부드러우면서도 따끔거리지 않습니다.
· 긴 기장감(글로벌 상품 대비 총기장 +10cm )으로 트렌디한 실루엣 입니다.', 99000, 'M', 'T', 'OT',  '432809_1.png', '432809_2.png', '432809_3.png', '432809_4.png', '432809_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135829&displayNo=NQ1A01A10A15&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432049', 'JWA더블페이스더플코트', '영국 전통의 더플 코트 디자인을 현대적으로 재해석한 더블페이스 더플 코트.
유니클로의 심플한 고품질 옷에 JW ANDERSON의 혁신적인 디자인이 더해진 라이프웨어를 만나보세요!
· 두께감이 있으면서도 가벼운 착용감을 양립한 더블페이스 소재를 사용하였습니다.
· 안감은 오렌지 컬러를 더한 체크 무늬를 채용하였습니다.
· JWA 로고의 전환과 빈티지 더플 코트에서 영감을 받은 디테일이 디자인의 포인트!
· 빈티지 디자인을 참고하여 무릎 기장, 다소 여유가 있는 실루엣으로 설정하였습니다.', 149000, 'M', 'T', 'OT', '432049_1.png', '432049_2.png', '432049_3.png', '432049_4.png', '432049_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31130584&displayNo=NQ1A01A10A15&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('426035', '라이트후디드코트', '가벼운 비바람을 막아주면서도 가벼운 착용감을 느낄 수 있는 라이트 BLOCKTECH 후디드 코트.
· 내구발수, 방풍, 투습 기능.
· 트렌디한 오버사이즈 실루엣.
· *자외선 차단(UPF40) 기능.
* 자외선 차단평가 (JIS L 1925:2019) 결과 기준.', 89900, 'M', 'T', 'OT', '426035_1.png', '426035_2.png', '426035_3.png', '426035_4.png', '426035_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135238&displayNo=NQ1A01A10A15&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431339', 'U트렌치코트', '모던하게 재해석한 트렌치 코트.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 긴 기장감과 A라인 실루엣이 특징.', 149000, 'M', 'T', 'OT', '431339_1.png', '431339_2.png', '431339_3.png', '431339_4.png', '431339_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134735&displayNo=NQ1A01A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428990', '헌팅재킷', '코듀로이, 플란넬 소재를 사용하여 캐주얼하면서도 따뜻한 착용감을 자랑하는 헌팅 재킷.
· 매트한 질감의 코튼 혼합 소재 사용.
· 옷깃과 소매는 코듀로이 소재 사용.
· 안감은 체크 무늬의 플란넬 소재 사용.
· 가벼운 물방울을 튕겨내는 내구발수 가공 처리.
· 재킷 위에도 착용하기 좋은 기장감.', 79900, 'M', 'T', 'OT', '428990_1.png', '428990_2.png', '428990_3.png', '428990_4.png', '428990_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127667&displayNo=NQ1A01A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425030', '데님재킷', '트렌디한 와이드 핏을 적용하여 트렌디한 실루엣의 데님 재킷.
· 스트레치 데님 소재 사용.
· 짱짱하면서도 좋은 소재 사용.
· 이염걱정없는 클린 소재 사용.', 49900, 'M', 'T', 'OT', '425030_1.png', '425030_2.png', '425030_3.png', '425030_4.png', '425030_5.png');

--16
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135270&displayNo=NQ1A01A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429188', '윈드블럭보아후리스재킷', '찬 바람이 잘 통하지 않아 따뜻함을 유지시켜주는 방풍 기능을 지닌 후리스 재킷.
· 릴렉스감 있는 트렌디한 실루엣.
· 젠더리스로 착용 가능.
· 0.008mm의 필름으로 차가운 바람은 막아주며 착용감은 가볍고 부드러우며 따뜻합니다.
· 안감의 후리스로 피부에 닿는 감촉이 부드럽습니다.', 49900, 'M', 'T', 'OT', '429188_1.png', '429188_2.png', '429188_3.png', '429188_4.png', '429188_5.png');

--17
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135271&displayNo=NQ1A01A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429189', '플러피얀후리스풀짚파카', '방풍기능으로 찬 바람이 잘 통하지 않아 따뜻함을 유지시켜주는 후리스풀짚파카.
· 부드러운 후리스 소재와 메쉬소재의 앞 주머니 사양을 플러스.
· 0.008mm의 필름으로 차가운 바람은 막아주며 착용감은 가볍고 부드러우며 따뜻합니다.
· 안감의 후리스로 피부에 닿는 감촉이 부드럽습니다.', 49900, 'M', 'T', 'OT', '429189_1.png', '429189_2.png', '429189_3.png', '429189_4.png', '429189_5.png');

--18
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135814&displayNo=NQ1A01A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425423', '컴포트블레이저', '신축성이 있어 편하면서도 가벼운 착용감을 자랑하는 컴포트 블레이저.
· 블레이저 같은 박시한 실루엣으로 설정.
· 스트레치 소재 사용.
· 이지케어 가공 처리.
· 전통 재킷의 디테일을 연구하여 세부 사양까지 고집한 아이템', 69900, 'M', 'T', 'OT', '425423_1.png', '425423_2.png', '425423_3.png', '425423_4.png', '425423_5.png');

--19
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135815&displayNo=NQ1A01A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428937', '프린팅컴포트재킷', '여유감 있는 실루엣과 신축성으로 편한 착용감을 느낄 수 있는 컴포트 재킷.
· 어깨 주변의 디자인을 변경하여 더 편한 착용감으로 개선.
· 저지 소재 사용.
· 레귤러 피트 사양.', 69900, 'M', 'T', 'OT', '428937_1.png', '428937_2.png', '428937_3.png', '428937_4.png', '428937_5.png');

--20
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129498&displayNo=NQ1A01A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425035', '컴포트재킷20SS', '여유감 있는 실루엣과 신축성으로 편한 착용감을 느낄 수 있는 컴포트 재킷.
· 어깨 주변의 디자인을 변경하여 더 편한 착용감으로 개선.', 69900, 'M', 'T', 'OT', '425035_1.png', '425035_2.png', '425035_3.png', '425035_4.png', '425035_5.png');

--21
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134733&displayNo=NQ1A01A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430463', '코듀로이재킷', '따뜻한 코듀로이 소재를 사용한 클래식한 감각의 재킷.
· 2WAY 스트레치로 편안한 착용감을 느끼실 수 있습니다.', 79900, 'M', 'T', 'OT', '430463_1.png', '430463_2.png', '430463_3.png', '430463_4.png', '430463_5.png');

--22
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129500&displayNo=NQ1A01A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425136', '리넨블렌드재킷', '시원하면서도 부드러운 착용감을 느낄 수 있는 리넨 블렌드 재킷.
· 리넨 X 코튼 혼합 소재 사용.
· 워시가공 추가.
· 여유감 있는 실루엣.', 79900, 'M', 'T', 'OT', '425136_1.png', '425136_2.png', '425136_3.png', '425136_4.png', '425136_5.png');

--23
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135235&displayNo=NQ1A01A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431346', '울블렌드저지테일러드재킷', '최소한의 디테일과 스트레이트 실루엣으로 보다 편안한 착용감을 느낄 수 있는 울블렌드 저지 테일러드 재킷.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 편안한 착용감을 자랑하는 초경량 플란넬 울 소재 사용.', 129000, 'M', 'T', 'OT', '431346_1.png', '431346_2.png', '431346_3.png', '431346_4.png', '431346_5.png');

--24
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135234&displayNo=NQ1A01A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431345', '테일러드재킷', '릴렉스한 피트감과 다소 넓은 어깨 폭과 기장감이 트렌디한 인상을 주는 테일러드 재킷.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 주름이 잘 생기지 않는 소재 사용.', 99000, 'M', 'T', 'OT', '431345_1.png', '431345_2.png', '431345_3.png', '431345_4.png', '431345_5.png');

--25
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127671&displayNo=NQ1A01A10A15&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425415', '2WAY싱글브레스트코트', '안솜 라이너로 기온에 맞춰 어레인지할 수 있는 2WAY 싱글브레스트 코트.
· 내구발수 가공 처리.', 129000, 'M', 'T', 'OT', '425415_1.png', '425415_2.png', '425415_3.png', '425415_4.png', '425415_5.png');

--26
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127671&displayNo=NQ1A01A10A15&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425429', '트렌치코트', '소재부터 디테일, 실루엣까지 세세한 부분까지 신경 쓴 트렌치 코트.
· 고급 코튼 소재를 사용하여 탄력있는 소재감을 느낄 수 있습니다.
· 가벼운 물방울을 튕겨 내는 내구 발수 가공 처리.', 149000, 'M', 'T', 'OT', '425429_1.png', '425429_2.png', '425429_3.png', '425429_4.png', '425429_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 남자 티셔츠 M T SH

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134831&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('433839', 'AIRism자외선차단T', '상쾌한 착용감을 느낄 수 있으면서도 자외선을 차단해주는 AIRism UV PROTECTION T셔츠.
· 자외선 차단(UPF40+)* 기능.
* 자외선 차단평가 (JIS L 1925:2019) 결과 기준.', 19900, 'M', 'T', 'SH', '433839_1.png', '433839_2.png', '433839_3.png', '433839_4.png', '433839_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31122247&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('418696', '소프트터치크루넥T', '안감에 기모 가공을 추가하여 부드러우면서도 따뜻한 착용감을 느낄 수 있는 소프트터치 크루넥 T셔츠.
· 면 소재 100% 사용.', 14900, 'M', 'T', 'SH', '418696_1.png', '418696_2.png', '418696_3.png', '418696_4.png', '418696_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135879&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432513', 'U히트텍코튼크루넥T', '상의 아이템으로서 히트텍 소재의 새로운 가능성! 히트텍 코튼 크루넥 T셔츠.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 빈티지 밀리터리에서 영감을 받은 디자인으로 맵시있는 인상을 줍니다.
· 미들 웨이트 소재를 채택하였습니다.
· 겉감은 면 소재를, 안감은 히트텍 소재를 사용하여 따뜻한 착용감을 느낄 수 있습니다.
· 흡습 발열*, 보온, 흡·방습, 형상 유지 기능 추가.', 19900, 'M', 'T', 'SH', '432513_1.png', '432513_2.png', '432513_3.png', '432513_4.png', '432513_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127830&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425213', 'U크루넥긴팔T', '심플한 디자인이면서도 소재, 디테일 모두 고집한 크루넥 T셔츠.
· 크리스토퍼 르메르가 이끄는 파리의 디자이너 팀이 제안하는 새로운 LifeWear 컬렉션.
· 클래식한 티셔츠 다운 저지 소재를 사용하였습니다.
· 클래식한 스티치를 채용하였습니다.
· 드룝 숄더 사양으로 편한 착용감을 느낄 수 있습니다.
· 편리한 가슴 포켓 사양.', 29900, 'M', 'T', 'SH', '425213_1.png', '425213_2.png', '425213_3.png', '425213_4.png', '425213_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134094&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429192', '히트텍후리스모크넥T', '히트텍 후리스 소재를 사용하여 가볍고 따뜻한 티셔츠.
· 어깨와 가슴둘레, 목둘레를 여유감 있게 조정하여 착용감이 뛰어남.', 14900, 'M', 'T', 'SH', '429192_1.png', '429192_2.png', '429192_3.png', '429192_4.png', '429192_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31122249&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('418698', '소프트터치모크넥T', '부드러우면서도 따뜻한 착용감을 느낄 수 있는 소프트 터치 모크넥 T셔츠.
· 면 소재 100% 사용.
· 안감 기모 가공 처리.', 14900, 'M', 'T', 'SH', '418698_1.png', '418698_2.png', '418698_3.png', '418698_4.png', '418698_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135602&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432166', '스탠드칼라스트라이프T', '편안한 착용감을 느낄 수 있으면서도 트렌디한 인상을 주는 스탠드 칼라 T셔츠.
· 탄력감이 있는 캐주얼한 소재감을 느낄 수 있습니다.
· 스탠드 칼라 디자인.
· 사이즈 업하여 여유감 있는 실루엣으로 착용하는 것도 추천!
· 소매 브라우징 부분을 넉넉하게 설정하여 편안한 착용감 실현!', 29900, 'M', 'T', 'SH', '432166_1.png', '432166_2.png', '432166_3.png', '432166_4.png', '432166_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31125888&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422597', '후리스하프짚풀오버', '하프짚 사양으로 체온 조절이 간편한 후리스 하프짚 풀오버.
· 후리스 소재 사용.
· 하프짚 사양.', 29900, 'M', 'T', 'SH', '422597_1.png', '422597_2.png', '422597_3.png', '422597_4.png', '422597_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127727&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422989', 'SUPIMA 코튼V넥T', '고급스러우면서도 부드러운 착용감을 자랑하는 SUPIMA COTTON V넥 T셔츠.
· 가슴너비, 소매너비를 약간 넓게 설정하면서도 밑간까지 깔끔하게 떨어지는 실루엣으로 개량.
· 수피마코튼 소재 100% 사용.', 9900, 'M', 'T', 'SH', '422989_1.png', '422989_2.png', '422989_3.png', '422989_4.png', '422989_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127726&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('419495', '반팔 크루넥T', '심플한 디자인으로 다양한 스타일에 활용하기 좋은 크루넥 T셔츠.
· 보송보송한 착용감을 유지시켜 주면서도, 세탁 후 건조가 빠른 드라이 기능 추가.
· 크루넥 타입.', 7900, 'M', 'T', 'SH', '419495_1.png', '419495_2.png', '419495_3.png', '419495_4.png', '419495_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31130612&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422995', 'U오버사이즈반팔크루넥T', '고급스러운 분위기를 연출할 수 있는 오버사이즈 크루넥 T셔츠.
· 크리스토퍼 르메르가 이끄는 파리 디자이너 팀이 제안하는 혁신적인 소재와 현대적인 디자인의 새로운 LifeWear 컬렉션.
· 특수 가공을 추가하여 적당한 광택감을 즐길 수 있습니다.
· 드롭 숄더와 박시한 실루엣으로 설정하여 편한 착용감을 느낄 수 있습니다.', 19900, 'M', 'T', 'SH', '422995_1.png', '422995_2.png', '422995_3.png', '422995_4.png', '422995_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134107&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430605', 'EFM니트폴로셔츠', '고급스러우면서도 섬세하고 우아한 감촉을 느낄 수 있는 EFM 니트 폴로셔츠.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 물세탁 가능.
· 크루넥 타입.', 39900, 'M', 'T', 'SH', '430605_1.png', '430605_2.png', '430605_3.png', '430605_4.png', '430605_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129604&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422970', 'DRY-EX폴로셔츠', '놀라운 통기성과 드라이 기능으로 시원한 착용감을 느낄 수 있는 DRY-EX 폴로 셔츠.
· 드라이 기능을 가진 드라이 EX 소재 사용.
· 통기성이 높은 짜임 방식을 채용하여 끈적이지 않습니다.
· 열이 발생하여 땀이 나기 쉬운 겨드랑이 부분은 메쉬 홀을 채용하여 통기성 향상.', 29900, 'M', 'T', 'SH', '422970_1.png', '422970_2.png', '422970_3.png', '422970_4.png', '422970_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127828&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422987', '드라이피케폴로셔츠', '신축성이 있어 움직임이 편하면서도 실루엣을 개량하여 높은 완성도를 자랑하는 드라이 피케 폴로 셔츠.
· 어깨와 가슴 주의의 실루엣 변경.
· 스포츠씬에서 착용하기 좋게 소매 기장을 늘림.
· 드라이 기능 추가.', 29900, 'M', 'T', 'SH', '422987_1.png', '422987_2.png', '422987_3.png', '422987_4.png', '422987_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129606&displayNo=NQ1A01A11A04&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('424217', 'AIRism피케폴로셔츠', '편안하면서도 시원한 착용감을 느낄 수 있는 AIRism 피케 폴로 셔츠.
· 에어리즘 소재 사용.
· 어깨와 가슴 둘레를 재검토.
· 칼라 주변의 가장자리는 스티치를 없애고 사이드 슬릿 추가, 소매는 싱글 스티치를 채용하여 깔끔한 인상을 줍니다.
· 버튼 다운(BD) 칼라 타입.', 29900, 'M', 'T', 'SH', '424217_1.png', '424217_2.png', '424217_3.png', '424217_4.png', '424217_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--남자 니트 M T KN 15

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134104&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429066', 'EFM울크루넥스웨터', '고급스러우면서도 섬세하고 우아한 감촉을 느낄 수 있는 EFM 크루넥 스웨터.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 물세탁 가능.
· 크루넥 타입.', 39900, 'M', 'T', 'KN', '429066_1.png', '429066_2.png', '429066_3.png', '429066_4.png', '429066_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31122305&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('419190', 'EFM모직크루넥스웨터', '고급스러운 모직 감촉을 느낄 수 있는 EFM 크루넥 스웨터.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 물 세탁이 가능한 사양.', 39900, 'M', 'T', 'KN', '419190_1.png', '419190_2.png', '419190_3.png', '419190_4.png', '419190_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134103&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429065', 'EFM V넥스웨터', '고급스러우면서도 섬세하고 우아한 감촉을 느낄 수 있는 EFM V넥 스웨터.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 물세탁 가능.
· V넥 타입.', 39900, 'M', 'T', 'KN', '429065_1.png', '429065_2.png', '429065_3.png', '429065_4.png', '429065_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134105&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429067', 'EFM터틀넥스웨터', '섬세하면서도 우아한 감촉을 느낄 수 EFM 터틀넥 스웨터.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 워셔블(물세탁) 사양.
· 칼라 높이를 낮게 설정하여 편한 착용감을 느낄 수 있습니다.
· 어깨에서부터 소매 밑단으로 갈수록 짜임을 단계적으로 설정하여 편한 착용감을 느낄 수 있습니다.
· 터틀넥 타입.', 39900, 'M', 'T', 'KN', '429067_1.png', '429067_2.png', '429067_3.png', '429067_4.png', '429067_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134106&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429068', 'EFM V넥베스트', '고급스러우면서도 섬세하고 우아한 감촉을 느낄 수 있는 EFM V넥 베스트.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 물세탁 가능.
· 크루넥 타입.', 29900, 'M', 'T', 'KN', '429068_1.png', '429068_2.png', '429068_3.png', '429068_4.png', '429068_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135276&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('435798', '캐시미어크루넥스웨터', '섬유의 보석이라 불리우는 캐시미어 소재를 사용하여 부드러우면서도 따뜻한 감촉을 느낄 수 있는 캐시미어 크루넥 스웨터.
· 캐시미어 소재 100% 사용.
· 크루넥 타입.', 99000, 'M', 'T', 'KN', '435798_1.png', '435798_2.png', '435798_3.png', '435798_4.png', '435798_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134099&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429074', '캐시미어V넥스웨터', '섬유의 보석이라 불리우는 캐시미어 소재를 사용하여 부드러우면서도 따뜻한 감촉을 느낄 수 있는 캐시미어 V넥 스웨터.
· 캐시미어 소재 100% 사용.
· 소매 밑단에서부터 어깨 주위까지 단계적으로 립 짜임을 설정하여 편안한 착용감을 느낄 수 있습니다.', 99000, 'M', 'T', 'KN', '429074_1.png', '429074_2.png', '429074_3.png', '429074_4.png', '429074_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134101&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429076', '캐시미어터틀넥스웨터', '섬유의 보석이라 불리는 캐시미어 소재를 100% 사용하여 부드러우면서도 따뜻한 착용감을 자랑하는 캐시미어 크루넥 스웨터.
· 매끄러우면서도 부드러운 감촉을 느낄 수 있습니다.
· 소매 밑단의 립 부분부터 어깨 주위까지 짜임을 단계적으로 디테일하게 설정하여 편한 착용감을 느낄 수 있습니다.
· 터틀넥 타입.', 99000, 'M', 'T', 'KN', '429076_1.png', '429076_2.png', '429076_3.png', '429076_4.png', '429076_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134839&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429069', '프리미엄램스울V넥가디건', '고급 모직 소재를 사용하여 부드러우면서도 따뜻한 착용감을 자랑하는 프리미엄 램스울 V넥 가디건.
· 19.5 마이크로 양모 소재를 사용하여 부드러운 감촉 실현.
· 밑단 립은 단계적으로 짜임 강도를 설정하여 편한 착용감을 느낄 수 있습니다.', 49900, 'M', 'T', 'KN', '429069_1.png', '429069_2.png', '429069_3.png', '429069_4.png', '429069_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134108&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429071', '프리미엄램스울크루넥스웨터', '소재의 원료를 변경하여 더욱 부드러운 감촉을 느낄 수 있는 프리미엄 램스울 크루넥 스웨터.
· 19.5 마이크로 프리미엄 램스울 소재 100% 사용.
· 크루넥 타입.', 39900, 'M', 'T', 'KN', '429071_1.png', '429071_2.png', '429071_3.png', '429071_4.png', '429071_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135278&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432324', '로우게이지크루넥스웨터', '클래식한 피셔맨 니트를 JWA식으로 재해석한 로우게이지 크루넥 스웨터.
· 유니클로의 심플한 고품질 옷에 JW ANDERSON의 혁신적인 디자인이 더해진 라이프웨어를 만나보세요!
· 여러가지 컬러의 실을 믹스한 디자인이 포인트.
· 여유감 있는 실루엣이 특징.', 49900, 'M', 'T', 'KN', '432324_1.png', '432324_2.png', '432324_3.png', '432324_4.png', '432324_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135607&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432323', '프리미엄램스울모크넥스웨터', '컬러풀한 색감을 사용하여 고급스러우면서도 캐주얼한 인상을 주는 프리미엄 램스울 모크넥 스웨터.
· 유니클로의 심플한 고품질 옷에 JW ANDERSON의 혁신적인 디자인이 더해진 라이프웨어를 만나보세요!
· 19.5 마이크론의 고품질 울 100% 사용.
· 모크넥 디자인으로 세련되고 경쾌한 겨울 룩과 레이어링에 적합합니다.', 49900, 'M', 'T', 'KN', '432323_1.png', '432323_2.png', '432323_3.png', '432323_4.png', '432323_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135280&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432930', 'U미들게이지모크넥스웨터', '부드럽고 따뜻한 미들 게이지 모크넥 스웨터.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 울 소재 100% 사용.', 49900, 'M', 'T', 'KN', '432930_1.png', '432930_2.png', '432930_3.png', '432930_4.png', '432930_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134840&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432745', 'U라이트웨이트크루넥스웨터', '릴렉스한 피트감의 라이트 웨이트 크루넥 스웨터.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 울 블렌드 소재 사용.
· 심플한 래글런 슬리브 타입.', 49900, 'M', 'T', 'KN', '432745_1.png', '432745_2.png', '432745_3.png', '432745_4.png', '432745_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134841&displayNo=NQ1A01A17A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432746', 'U립크루넥스웨터', '고급스러운 인상을 주는 립 크루넥 스웨터.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 19.5 마이크론 극세 메리노 울에 아크릴을 블렌드한 소재 사용.', 49900, 'M', 'T', 'KN', '432746_1.png', '432746_2.png', '432746_3.png', '432746_4.png', '432746_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--남자 반바지 M B SP

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31132406&displayNo=NQ1A01A06A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428050', '울트라스트레치액티브쇼트팬츠', '뛰어난 기능과 세련된 디자인으로 스포츠씬뿐만 아니라 캐주얼한 스타일에도 제격인 울트라 스트레치 액티브 쇼트 팬츠.
· 드라이 EX 소재 사용.
· 울트라 스트레치 원단 채용.
· 밑단은 압착 테이프 및 반사 테이프를 채용하여 깔끔한 인상을 줍니다.
· 동전과 IC카드를 수납할 수 있는 지퍼 포켓 사양.', 29900, 'M', 'B', 'SP', '428050_1.png', '428050_2.png', '428050_3.png', '428050_4.png', '428050_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129612&recopick=4&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422975', '울트라스트레치액티브쇼트팬츠', '뛰어난 기능과 세련된 디자인으로 스포츠씬뿐만 아니라 캐주얼한 스타일에도 제격인 울트라 스트레치 액티브 쇼트 팬츠.
· 드라이 EX 소재 사용.
· 울트라 스트레치 원단 채용.
· 밑단은 압착 테이프 및 반사 테이프를 채용하여 깔끔한 인상을 줍니다.
· 동전과 IC카드를 수납할 수 있는 지퍼 포켓 사양.', 29900, 'M', 'B', 'SP', '422975_1.png', '422975_2.png', '422975_3.png', '422975_4.png', '422975_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129643&displayNo=NQ1A01A14A10&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('427820', '저지이지쇼트팬츠A', '부드러우면서도 편한 착용감을 느낄 수 있는 저지 이지 쇼트 팬츠.
· 면 소재 100%의 저지 원단 사용.', 19900, 'M', 'B', 'SP', '427820_1.png', '427820_2.png', '427820_3.png', '427820_4.png', '427820_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129641&displayNo=NQ1A01A06A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('427818', '드라이스트레치이지쇼트팬츠B', '땀을 흘려도 끈적이지 않아 편한 착용감을 느낄 수 있는 드라이 스트레치 이지 쇼트 팬츠.
· 저지 소재 사용.
· 드라이 기능.
· 신축성이 있어 움직임이 편합니다.', 12900, 'M', 'B', 'SP', '427818_1.png', '427818_2.png', '427818_3.png', '427818_4.png', '427818_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129644&displayNo=NQ1A01A14A10&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('427823', '저지이지쇼트팬츠D', '부드러우면서도 편한 착용감을 느낄 수 있는 저지 이지 쇼트 팬츠.
· 면 소재 100%의 저지 원단 사용.', 19900, 'M', 'B', 'SP', '427823_1.png', '427823_2.png', '427823_3.png', '427823_4.png', '427823_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129645&displayNo=NQ1A01A14A10&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('427824', '저지이지쇼트팬츠E', '부드러우면서도 편한 착용감을 자랑하는 저지 이지 쇼트팬츠.', 19900, 'M', 'B', 'SP', '427824_1.png', '427824_2.png', '427824_3.png', '427824_4.png', '427824_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31130587&recopick=25&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425150', '나일론액티브쇼트팬츠', '편한 착용감을 느낄 수 있으면서도 세련된 인상을 주는 나일론 액티브 쇼트 팬츠.
· 나일론 소재 사용.
· 워시 가공 처리.
· 레저 및 스포츠 씬에 활용하기 좋습니다.
· 원터치 타입의 벨트 사양.
· 사이드 지퍼 포켓 사양.', 29900, 'M', 'B', 'SP', '425150_1.png', '425150_2.png', '425150_3.png', '425150_4.png', '425150_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129640&recopick=25&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('427817', '드라이스트레치이지쇼트팬츠A', '보송보송한 착용감을 유지시켜 주는 드라이 스트레치 이지 쇼트 팬츠.
· 드라이 기능 추가.', 19900, 'M', 'B', 'SP', '427817_1.png', '427817_2.png', '427817_3.png', '427817_4.png', '427817_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?displayNo=&goodsNo=NQ31132082&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425142', '치노쇼트팬츠', '트렌디한 여유감 있는 실루엣으로 설정하여 캐주얼한 스타일에 제격인 치노 쇼트 팬츠.
· 면 소재 100% 사용.', 29900, 'M', 'B', 'SP', '425142_1.png', '425142_2.png', '425142_3.png', '425142_4.png', '425142_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127836&recopick=25&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422972', 'DRY-EX쇼트팬츠', '뛰어난 통기성과 드라이 기능으로 쾌적한 착용감을 유지시켜 주는 DRY-EX 쇼트 팬츠.
· 드라이 기능이 뛰어난 드라이 EX 소재 사용.
· 열이 발생하여 땀 나기 쉬운 부분은 메쉬 홀을 채용하여 통기성을 높였습니다.
· 사이드 라인 디자인.
· 동전과 IC 카드를 수납할 수 있는 지퍼 포켓 사양.', 29900, 'M', 'B', 'SP', '422972_1.png', '422972_2.png', '422972_3.png', '422972_4.png', '422972_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134865&displayNo=NQ1A01A14A10&stonType=P&storeNo=83&siteNo=50706#
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430631', '히트텍STETECO', '기능성이 뛰어나 얇지만 따뜻한 히트텍 STETECO.
· 흡습 발열＊,스트레치성, 형상 유지, 보온, 정전기 방지 기능.
· 착용감이 편안한 릴렉스 피트.', 14900, 'M', 'B', 'SP', '430631_1.png', '430631_2.png', '430631_3.png', '430631_4.png', '430631_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--남자 긴바지 M B LP 15

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134064&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430270', '스트레치셀비지슬림피트진', '신축성을 추가하여 편한 착용감을 느낄 수 있는 스트레치 셀비지 슬림피트 진.
· 카이하라 사의 셀비지 데님 원단 사용.
· 논 워싱 리지드 데님 원단으로 입을 수록 체형에 맞는 스타일로 탈색됩니다.
· 다리가 길어 보이게 전면 포켓 위치를 높게 설정하고, 백 포켓의 각도 조정.
· 미들 라이즈 타입.', 49900, 'M', 'B', 'LP', '430270_1.png', '430270_2.png', '430270_3.png', '430270_4.png', '430270_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134061&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428686', '레귤러피트스트레이트진', '베이직하면서도 모던한 디자인을 즐길 수 있는 레귤러피트 스트레이트 진.
· 적당한 탄력감을 느낄 수 있는 카이하라 사의 데님 원단 채용.
· 스트레이트 실루엣.
· 미들 라이즈 타입.
· 포켓은 높은 위치에 설정.
· 청바지 혁신 센터에서 개발한 워터리스 워시 가공을 채택하여 물 사용을 최대 90%이상 줄였습니다.
· 밑단을 롤업하기 좋은 기장으로 설정.', 49900, 'M', 'B', 'LP', '428686_1.png', '428686_2.png', '428686_3.png', '428686_4.png', '428686_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135241&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('433239', 'U레귤러피트진', '베이직한 디자인의 레귤러 피트 진.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 코튼 소재 100%의 베이직한 데님 원단 사용.
· 다리가 길어 보이는 스트레이트 실루엣.', 49900, 'M', 'B', 'LP', '433239_1.png', '433239_2.png', '433239_3.png', '433239_4.png', '433239_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127673&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422364', '레귤러피트테이퍼드진', '여유감 있는 실루엣으로 편한 착용감을 느낄 수 있는 레귤러피트 테이퍼드 진.
· 카이하라 사의 면 소재 100% 데님 원단 사용.
· 워시 가공.', 49900, 'M', 'B', 'LP', '422364_1.png', '422364_2.png', '422364_3.png', '422364_4.png', '422364_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31122219&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('418939', '레귤러피트테이퍼드진FW', '새로운 실루엣을 채용하여 편한 착용감뿐만 아니라 트렌디한 스타일 연출을 할 수 있는 레귤러피트 테이퍼드 진.
· 적당한 탄력감을 느낄 수 있는 면 소재 100%의 카이하라 사 데님 원단 사용하였습니다.
· 다리에 밀착되지 않아 편한 착용감을 느낄 수 있습니다.
· 밑단으로 갈수록 완만해지는 테이퍼드 실루엣을 채용하여 새로운 레귤러 피트감을 느낄 수 있습니다.
· 염색에 의한 얼룩을 최대한 억제하여 빈티지한 느낌을 표현하였습니다.
· 시접의 단차를 최대한 없애고 측 솔기 폭을 굵게 설정하여 부드러운 감촉을 실현하였습니다.', 49900, 'M', 'B', 'LP', '418939_1.png', '418939_2.png', '418939_3.png', '418939_4.png', '418939_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134060&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428685', 'EZY진20FW', '부드러운 착용감을 자랑하는 EZY진.
· 깔끔한 인상을 주는 슬림 테이퍼드 실루엣 타입.
· 허리 내측에 드로우 스트링을 추가하여 벨트 없이도 편안하게 착용 가능.
· 청바지 혁신 센터에서 독자적으로 개발한 워터리스 워시 기법을 채용하여 물 사용을 최대 90% 줄였습니다.', 49900, 'M', 'B', 'LP', '428685_1.png', '428685_2.png', '428685_3.png', '428685_4.png', '428685_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127676&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425302', '데미지슬림피트진', '신축성이 있으 움직임이 편하면서도 멋스러운 실루엣을 즐길 수 있는 슬림피트 진.
· 모든 패턴을 재검토하여 세련된 슬림 스트레이트 실루엣으로 변경.
· 컴포트 스트레치 데님 소재 사용.
· 라이즈를 약간 깊게 설정.
· 프론트 포켓의 위치를 높이고, 백 포켓의 각도 조정.
· 청바지 혁신 센터의 최첨단 기술과 가공 전문가의 연구 개발을 통해 빈티지한 감촉을 표현.
· 버튼과 리벳은 내추럴한 색상으로 설정.', 49900, 'M', 'B', 'LP', '425302_1.png', '425302_2.png', '425302_3.png', '425302_4.png', '425302_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135835&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428902', '스트레치코듀로이스키니피트진', '뛰어난 스트레치성으로 편안한 착용감을 느낄 수 있는 스트레치 코듀로이 스키니피트 진.
· 코듀로이 소재 사용.
· 허리 안쪽에 드로우 스트링을 추가하여 벨트 없이도 편안하게 착용 가능.', 39900, 'M', 'B', 'LP', '428902_1.png', '428902_2.png', '428902_3.png', '428902_4.png', '428902_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129514&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422368', '스트레치스키니피트컬러진', '신축성이 있어 움직임이 편한 울트라 스트레치 스키니 피트 컬러 진.
· 울트라 스트레치 새틴 소재 사용.
· 표면에는 광택감을 느낄 수 있는 미세 기모 가공 처리.
· 웨이스트 밴드 n 드로우 사양.', 39900, 'M', 'B', 'LP', '422368_1.png', '422368_2.png', '422368_3.png', '422368_4.png', '422368_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129511&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422360', '울트라스트레치스키니피트진', '움직임이 편하면서도 스키니한 실루엣을 자랑하는 울트라 스트레치 스키니 피트 진.
· 카이하라 사의 울트라 스트레치 데님 원단 사용.
· 스키니 피트 타입.
· 밑단은 테이퍼드 타입.
· 백포켓의 위치를 높게 설정.', 49900, 'M', 'B', 'LP', '422360_1.png', '422360_2.png', '422360_3.png', '422360_4.png', '422360_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135240&displayNo=NQ1A01A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428903', '히트텍스트레치슬림피트진', '신축성이 있어 편안하면서도 따뜻한 착용감을 느낄 수 있는 히트텍 스트레치 슬림피트 진
· 신축성이 있는 울트라 스트레치 소재 사용.
· 흡습 발열 기능이 있는 히트텍 소재 사용.
· 청바지 혁신 센터에서 연구한 최첨단 기술과 청바지 가공 전문가와 연구 개발을 거듭하여 만들어진 유니클로만의 악세사리 가공 추가.
· 슬림 테이퍼드 실루엣.', 49900, 'M', 'B', 'LP', '428903_1.png', '428903_2.png', '428903_3.png', '428903_4.png', '428903_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135247&displayNo=NQ1A01A12A28&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428930', '히트텍웜이지팬츠', '따뜻하면서도 부드러운 착용감을 느낄 수 있는 히트텍 웜 이지 팬츠.
· 안감에 히트텍 후리스 소재 사용.
· 겉감에 미니 립스톱 소재 사용.
· 슬림 테이퍼드 타입.
· 원터치로 여닫을 수 있는 이지 벨트 사양.
· 올해는 실루엣을 입체 구성으로 설계하여, 다리 형태에 맞추어서 더 움직이기 편한 패턴으로 설계.
· 입체 구성으로 편안함을 더하면서도 핏을 예쁘게 유지하기 위해 작년보다 3cm정도 기장감 짧게 개선.
· 주머니 입구에 고무를 추가하여 물건을 넣고 빼기 쉬운 디자인으로 설계.
· 백포켓은 테잎을 부착하여 한겨울에 장갑을 끼고도 사용하기 좋은 디자인.
· 흡습 발열* 기능 추가.', 49900, 'M', 'B', 'LP', '428930_1.png', '428930_2.png', '428930_3.png', '428930_4.png', '428930_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135245&displayNo=NQ1A01A12A28&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428922', '히트텍스마트슬림피트팬츠', '따뜻한 착용감을 느낄 수 있으면서도 깔끔한 인상을 주는 히트텍 스마트 슬림피트 팬츠.
· 가로 세로 방향으로 신축성이 있는 2WAY 스트레치 소재 사용.
· 흡습 발열 기능이 있는 히트텍 소재 사용.
· 울과 같은 감촉을 느낄 수 있어 비즈니스 씬에서도 착용하기 좋습니다.
· 세탁 후에도 주름 현상이 적은 이지 케어 가공 처리.
· 센터 프레스 주름 추가.
· 웨스트는 스트레칭 사양.', 49900, 'M', 'B', 'LP', '428922_1.png', '428922_2.png', '428922_3.png', '428922_4.png', '428922_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134072&displayNo=NQ1A01A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430227', '스마트앵클팬츠(코튼)', '신축성이 있어 편한 착용감을 느낄 수 있으면서도 깔끔한 인상을 주는 스마트 앵클팬츠.
· 가로, 세로 방향으로 신축성이 있는 2WAY 스트레치 소재 사용.
· 웨스트 밴드 사양.
· 원단으로 웨스트 밴드를 커버하여 깔끔한 인상을 줍니다.
· 앵클 기장.
· 슬림피트 테이퍼드 실루엣.', 39900, 'M', 'B', 'LP', '430227_1.png', '430227_2.png', '430227_3.png', '430227_4.png', '430227_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134073&displayNo=NQ1A01A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430237', '스마트앵클팬츠(저지)', '신축성이 있어 편한 착용감을 느낄 수 있으면서도 깔끔한 인상을 주는 스마트 앵클팬츠.
· 가로, 세로 방향으로 신축성이 있는 스트레치 저지 소재 사용.
· 울과 같은 고급스러운 감촉을 느낄 수 있습니다.
· 웨스트 밴드 사양.
· 원단으로 웨스트 밴드를 커버하여 깔끔한 인상을 줍니다.
· 앵클 기장.
· 슬림피트 테이퍼드 실루엣.', 39900, 'M', 'B', 'LP', '430237_1.png', '430237_2.png', '430237_3.png', '430237_4.png', '430237_5.png');

--16
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134756&displayNo=NQ1A01A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428928', '스마트앵클팬츠(코듀로이)', '깔끔한 인상을 주면서도 따뜻한 착용감을 느낄 수 있는 스마트 앵클 팬츠.
· 가로, 세로 방향으로 신축성이 있는 2WAY 스트레치 소재 사용.
· 웨스트 밴드 사양.
· 슬림피트 n 테이퍼드 실루엣.', 39900, 'M', 'B', 'LP', '428928_1.png', '428928_2.png', '428928_3.png', '428928_4.png', '428928_5.png');

--17
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134097&displayNo=NQ1A01A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429164', 'DRY-EX스마트앵클팬츠', '고급스러운 외형이 매력적인 스마트 앵클팬츠.
· 신축성이 있는 울트라 스트레치 소재의 드라이 EX 원단 사용.
· 드라이 기능.
· 탄력감이 있어 깔끔한 실루엣 실현.
· 웨스트 밴드 사양.', 39900, 'M', 'B', 'LP', '429164_1.png', '429164_2.png', '429164_3.png', '429164_4.png', '429164_5.png');

--18
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134870&displayNo=NQ1A01A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428767', '코튼릴랙스앵클팬츠', '워시 느낌의 거친 감촉이 특징이면서도 깔끔한 실루엣을 즐길 수 있는 코튼 릴랙스 앵클팬츠.
· 면 소재 사용.
· 웨이스트 드로우를 내측으로 변경.
· 테이퍼드 실루엣.', 29900, 'M', 'B', 'LP', '428767_1.png', '428767_2.png', '428767_3.png', '428767_4.png', '428767_5.png');

--19
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134068&displayNo=NQ1A01A12A27&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428920', '스마트슬림피트팬츠', '가로, 세로 방향으로 신축성이 있어 움직임이 편한 스마트 슬림피트 팬츠.
· 2WAY 스트레치 사양.
· 이지케어 가공 처리.
· 울과 같은 소재감을 느낄 수 있습니다.
· 신축성이 있는 웨이스트 사양.
· 웨이스트 내측의 디자인, 버튼 등 모직 바지의 디테일 채용.
· 세탁 후에도 센터 프레스 라인 유지.', 49900, 'M', 'B', 'LP', '428920_1.png', '428920_2.png', '428920_3.png', '428920_4.png', '428920_5.png');

--20
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127678&displayNo=NQ1A01A12A27&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422373', '감탄팬츠(울트라라이트)', '가벼우면서도 편한 착용감을 느낄 수 있어 비즈니스씬 뿐만 아니라 스포츠씬에서도 착용하기 좋은 감탄 팬츠.
· 클린룩뿐만 아니라 캐주얼룩에서도 매치하기 좋은 코튼 계열의 소재 사용.
· 아담 스콧 선수와 공동 개발한 초속건, 울트라스트레치, 초경량의 기능을 겸비한 고기능성 팬츠입니다.
· 도레이 사와 공동 개발한 소재 사용
· 이지케어 가공 처리.
· 웨이스트 주변에 신축성 추가.
· 포켓 주변과 웨이스트 뒷면은 통기성이 좋은 Air dots 채용.', 49900, 'M', 'B', 'LP', '422373_1.png', '422373_2.png', '422373_3.png', '422373_4.png', '422373_5.png');

--21
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135249&displayNo=NQ1A01A12A27&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431525', 'U와이드피트테이퍼드팬츠', '고급스러우면서도 관리가 편한 울 라이크 소재의 와이드 피트 테이퍼드 팬츠.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 주름이 잘 생기지 않고 깔끔한 인상을 주는 울라이크 소재 사용.
· 웨이스트에 드로우 스트링과 벨트 루프 장식 추가.', 49900, 'M', 'B', 'LP', '431525_1.png', '431525_2.png', '431525_3.png', '431525_4.png', '431525_5.png');

--22
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135246&displayNo=NQ1A01A12A27&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('435455', 'JWA울블렌드노턱팬츠', '심플하지만 고급스러우면서도 품위있어 보이는 인상을 주는 울블렌드 노턱 팬츠.
유니클로의 심플한 고품질 옷에 JW ANDERSON의 혁신적인 디자인이 더해진 라이프웨어를 만나보세요!
· 고급스러우면서도 경량화를 실현한 울 블렌드 소재를 사용하였습니다.
· 심플한 스트레이트 실루엣으로 다양한 스타일과 매치하기 좋습니다.', 59900, 'M', 'B', 'LP', '435455_1.png', '435455_2.png', '435455_3.png', '435455_4.png', '435455_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--여자 아우터 F T OT 15

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135175&displayNo=NQ1A02A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429461', '하이브리드다운코트', '뛰어난 보온성과 편안한 착용감을 느낄 수 있는 하이브리드 다운 코트.
· 가벼운 물방울을 튕겨내는 내구 발수 가공 처리.
· 다운과 기능 안솜을 구분하여 따뜻함과 가벼움을 양립시킨 하이브리드 구조.
· 스탠드 칼라와 후드의 2WAY 디자인.', 129000, 'F', 'T', 'OT', '429461_1.png', '429461_2.png', '429461_3.png', '429461_4.png', '429461_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31123230&displayNo=NQ1A02A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('420252', '심리스다운쇼트코트', '깔끔하고 심플한 디자인을 즐길 수 있는 심리스 다운 쇼트 코트.
· 내구 발수, 방풍 기능.', 169000, 'F', 'T', 'OT', '420252_1.png', '420252_2.png', '420252_3.png', '420252_4.png', '420252_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134505&displayNo=NQ1A02A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432025', '심리스다운파카', '뛰어난 보온성은 물론, 심리스 타입으로 깔끔하고 스타일리시한 디자인이 특징인 심리스 다운 파카.
· 가벼운 물방울을 튕겨내는 내구 발수 가공 추가.
· 탈부착 가능한 후드 사양.
· 심리스 사양.', 149000, 'F', 'T', 'OT', '432025_1.png', '432025_2.png', '432025_3.png', '432025_4.png', '432025_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134503&displayNo=NQ1A02A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429458', '울트라라이트다운코쿤파카', '얇고 가벼우면서도 따뜻한 착용감을 느낄 수 있는 울트라 라이트 다운 코쿤 파카.
· 가벼운 물방울을 튕겨 내는 내구 발수 가공 처리.
· 포켓터블 사양.
· 안감은 정전지 억제 가공 처리.
· 트렌디한 볼륨감을 즐길 수 있는 코쿤 실루엣.
· 밑단은 스핀들 사양으로 실루엣 조절이 가능합니다.
· 왼쪽 내측 하단에 포켓 파우치를 걸어둘 수 있는 루프 추가.', 99900, 'F', 'T', 'OT', '429458_1.png', '429458_2.png', '429458_3.png', '429458_4.png', '429458_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133895&displayNo=NQ1A02A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429454', '울트라라이트다운파카', '얇고 가벼우면서도 따뜻한 착용감을 자랑하는 울트라 라이트 다운 파카.
· 피치를 넓게 설정하여 캐주얼한 인상을 줍니다.
· 가벼운 물방울을 튕겨 내는 내구 발수 가공 추가.
· 포켓터블 사양.
· 안감은 정전기 억제 가공 추가.
· 매트한 질감으로 설정.
· 왼쪽 내측 하단에 포켓 파우치를 걸어둘 수 있는 루프 추가.', 89900, 'F', 'T', 'OT', '429454_1.png', '429454_2.png', '429454_3.png', '429454_4.png', '429454_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134504&displayNo=NQ1A02A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429459', '울트라라이트다운후디드코트', '얇고 가벼우면서도 따뜻한 착용감을 느낄 수 있으면서도 맵시 있는 인상을 주는 울트라 라이트 다운 후디드 코트.
· 가벼운 물방울을 튕겨 내는 내구 발수 가공 처리.
· 포켓터블 사양.
· 안감은 정전지 억제 가공 처리.
· 피치를 가늘게 설정하여 깔끔한 인상을 줍니다.
· 웨스트 뒷면에 전환을 넣어 깔끔해 보입니다.
· 매트한 질감으로 설정.
· 탈부착 가능한 후드 사양.
· 왼쪽 내측 하단에 포켓 파우치를 걸어둘 수 있는 루프 추가.', 129000, 'F', 'T', 'OT', '429459_1.png', '429459_2.png', '429459_3.png', '429459_4.png', '429459_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135177&displayNo=NQ1A02A10A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('433024', '울트라라이트다운롱코트', '얇고 가벼우면서 뛰어난 보온성을 자랑하는 울트라라이트 다운 롱 코트.
· 물방울을 튕겨내는 내구 발수 가공 추가.
· 포켓터블 사양.
· 탈부착 가능한 후드 사양.
· 수납용 파우치를 걸어서 보관할 수 있도록 내측 왼쪽 하단에 루프 추가.', 149000, 'F', 'T', 'OT', '433024_1.png', '433024_2.png', '433024_3.png', '433024_4.png', '433024_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134507&displayNo=NQ1A02A10A14&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429473', '더블페이스코쿤코트', '더 가벼워진 착용감과 부드러운 감촉을 느낄 수 있는 더블페이스 코쿤 코트.
· 기존보다 더 가볍고 팽창감이 있어 부드러운 감촉을 느낄 수 있는 더블페이스 원단으로 업데이트!
· 울 블렌드 소재 사용.', 99000, 'F', 'T', 'OT', '429473_1.png', '429473_2.png', '429473_3.png', '429473_4.png', '429473_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135524&displayNo=NQ1A02A10A14&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432711', 'JWA더블페이스벨티드코트', '가볍고 편안한 착용감의 벨트가 부착되어있는 코트입니다.
· 가볍게 걸칠 수 있는 더블페이스 소재.
· 옷깃을 접어 올리면 새로운 인상을 주어 재미를 더합니다.
· 깔끔하 실루엣의 롱 기장.', 149000, 'F', 'T', 'OT', '432711_1.png', '432711_2.png', '432711_3.png', '432711_4.png', '432711_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134508&displayNo=NQ1A02A10A14&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429475', '캐시미어블렌드체스터코트', '부드러우면서도 고급스러운 소재감을 자랑하는 캐시미어 블렌드 체스터 코트.
· 울 X 캐시미어 혼합 소재 사용.
· 웨스트 부분에 전환을 넣은 아름다운 실루엣.', 169000, 'F', 'T', 'OT', '429475_1.png', '429475_2.png', '429475_3.png', '429475_4.png', '429475_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135523&displayNo=NQ1A02A10A14&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432710', 'JWA스텐칼라코트', '영국의 전통 디자인이 현대적으로 재해석 되었습니다. 깔끔하고 편안한 실루엣의 따뜻한 울 코트가 클래식한 룩을 제안합니다.
· 래글런 슬리브의 여유감 있는 소매 둘레로 두꺼운 니트 위에 착용해도 좋습니다.', 149000, 'F', 'T', 'OT', '432710_1.png', '432710_2.png', '432710_3.png', '432710_4.png', '432710_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134499&displayNo=NQ1A02A10A14&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431583', 'U패디드코트', '클래식한 트렌치 코트 다지인에 안솜을 추가하여 따뜻하면서도 모던하고 고급스러운 스타일링을 연출 할 수 있는 패디드 코트.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 여성스러운 실루엣을 만들어 주는 벨트 추가.', 149000, 'F', 'T', 'OT', '431583_1.png', '431583_2.png', '431583_3.png', '431583_4.png', '431583_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134492&displayNo=NQ1A02A10A14&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431588', 'U데님셔츠코트', '데님 느낌의 워크감은 살리면서 깔끔한 실루엣을 연출할 수 있는 데님 셔츠 코트.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 10온스 데님 사용.
· 워크 셔츠 다지인에 벨트 디테일을 추가하여 페미닌한 실루엣 연출 가능.
· 코트와 원피스 모두 스타일링 가능한 활용 만점 아이템.', 59900, 'F', 'T', 'OT', '431588_1.png', '431588_2.png', '431588_3.png', '431588_4.png', '431588_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133892&displayNo=NQ1A02A10A14&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429060', '경량라이트블록테크코트', '경량 소재를 사용하여 가벼운 착용감을 느낄 수 있으면서도 캐주얼한 스타일에 제격인 라이트 BLOCKTECH 코트.
· 자외선 차단 기능.
· 포켓터블 사양.
· 경량 소재 내부를 코팅 처리한 방풍 사양.
· 일반 블럭테크 소재와 비교하면 투습성은 2배.
· 케어 라벨은 왼쪽 주머니 안쪽에 있습니다.', 79900, 'F', 'T', 'OT', '429060_1.png', '429060_2.png', '429060_3.png', '429060_4.png', '429060_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31130404&displayNo=NQ1A02A10A14&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('424578', '라이트블록테크코트', '가벼운 비바람을 막아주면서도 가벼운 착용감을 느낄 수 있는 라이트 BLOCKTECH 코트.
· 내구발수, 방풍, 투습 기능.
· *자외선 차단(UPF40) 기능.
* 자외선 차단평가 (JIS L 1925:2019) 결과 기준.', 79900, 'F', 'T', 'OT', '424578_1.png', '424578_2.png', '424578_3.png', '424578_4.png', '424578_5.png');

--16
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134487&displayNo=NQ1A02A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431590', 'U울블렌드저지재킷', '오버사이즈 실루엣과 모던한 디자인의 울블렌드 저지 재킷.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 품위 있어 보이면서도 따뜻하면서 부드럽고 가벼운 울블렌드 저지 소재 사용.
· 더블 브레스트 타입.', 129000, 'F', 'T', 'OT', '431590_1.png', '431590_2.png', '431590_3.png', '431590_4.png', '431590_5.png');

--17
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134490&displayNo=NQ1A02A10A13&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432123', 'IDLF트위드재킷', '부드러우면서도 가벼운 착용감을 자랑하는 트위드 재킷.
· 시대와 세대를 넘어 사랑 받고 있는 프렌치 시크의 대명사 이네스 드 라 프레상쥬와 스페셜 콜라보레이션.
· 연구를 거듭한 부드러우면서도 가벼운 트위드 소재를 사용하였습니다.', 129000, 'F', 'T', 'OT', '432123_1.png', '432123_2.png', '432123_3.png', '432123_4.png', '432123_5.png');

--18
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31122045&displayNo=NQ1A02A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('419912', '포켓터블UV-CUT파카', '자외선을 막아주어 가방에 휴대하기 좋은 포켓터블 UV-CUT 파카.
· 포켓터블 사양.
· 내구발수 가공 처리.
· *자외선 차단(UPF50+) 기능.
* 자외선 차단평가 (JIS L 1925:2019) 결과 기준.', 39900, 'F', 'T', 'OT', '419912_1.png', '419912_2.png', '419912_3.png', '419912_4.png', '419912_5.png');

--19
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133891&displayNo=NQ1A02A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429059', 'BLOCKTECH파카', '가벼운 비와 바람을 막아주어 쾌적한 착용감을 유지시켜 주는 BLOCKTECH 파카.
· 내구발수 가공 처리.
· 스트레치성이 있어 움직이기 편함.
· 방풍, 투습 기능.
· 원터치로 조절 가능한 스토퍼 내측 부착.
· 보이지 않는 위치에 아일렛이라고 하는 통기 구멍을 추가하여 통기성 향상.
· 케어 라벨은 왼쪽 주머니 내측에 부착.', 69900, 'F', 'T', 'OT', '429059_1.png', '429059_2.png', '429059_3.png', '429059_4.png', '429059_5.png');

--20
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135789&displayNo=NQ1A02A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431314', '보아후리스쇼트코트', '트렌디한 컬러감과 디자인의 보아후리스쇼트코트.
· 따뜻함과 귀여운 인상을 주는 보아 후리스.', 49900, 'F', 'T', 'OT', '431314_1.png', '431314_2.png', '431314_3.png', '431314_4.png', '431314_5.png');

--21
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135554&displayNo=NQ1A02A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430812', 'JWA보아후리스블루종', '클래식한 양가죽 재킷에서 영감을 받아 모던한 느낌을 더했습니다.
· 가벼운 양털을 두꺼운 니트 위에 겹쳐 따뜻하고 편안한 옷을 입어보세요.
· 트렌디한 쇼트 기장으로 깔끔한 실루엣.', 59900, 'F', 'T', 'OT', '430812_1.png', '430812_2.png', '430812_3.png', '430812_4.png', '430812_5.png');

--22
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135787&displayNo=NQ1A02A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428333', '보아후리스테일러드코트', '따뜻함과 세련된 디자인의 보아후리스테일러트코트.
· 볼륨감이 있고 부드러운 촉감의 보아후리스 사용.
· 테일러드 디자인으로 세련된 옷차림.', 49900, 'F', 'T', 'OT', '428333_1.png', '428333_2.png', '428333_3.png', '428333_4.png', '428333_5.png');

--23
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31123331&displayNo=NQ1A02A10A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('418242', '플러피얀후리스풀짚재킷', '따뜻하면서도 푹신푹신한 감촉을 느낄 수 있는 플러피얀 후리스 풀짚 재킷.
· 빠른 건조와 간편한 세척 사양.
· 스트레이트 실루엣.
· 스탠드 칼라 타입.', 29900, 'F', 'T', 'OT', '418242_1.png', '418242_2.png', '418242_3.png', '418242_4.png', '418242_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--여자 티셔츠 F T SH

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135807&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432640', 'U히트텍코튼크루넥T', '상의 아이템으로서 히트텍 소재의 새로운 가능성! 히트텍 코튼 크루넥 T셔츠.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 빈티지 밀리터리에서 영감을 받은 디자인으로 맵시있는 인상을 줍니다.
· 미들 웨이트 소재를 채택하였습니다.
· 겉감은 면 소재를, 안감은 히트텍 소재를 사용하여 따뜻한 착용감을 느낄 수 있습니다.
· 흡습 발열*, 보온, 흡·방습, 형상 유지 기능 추가.', 19900, 'F', 'T', 'SH', '432640_1.png', '432640_2.png', '432640_3.png', '432640_4.png', '432640_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134590&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430869', 'U머서라이즈코튼모크넥T', '광택감 있는 소재와 트렌디한 모크넥 디자인이 특징인 머서라이즈 코튼 모크넥 T.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 신축성 있는 저지 소재에 실켓 가공 추가.', 19900, 'F', 'T', 'SH', '430869_1.png', '430869_2.png', '430869_3.png', '430869_4.png', '430869_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134589&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428320', '소프트니트크루넥퍼프슬리브T', '단품으로도 트렌디한 스타일을 즐길 수 있는 티셔츠.
· 볼륨감 있는 소매 디자인이 매력적.', 19900, 'F', 'T', 'SH', '428320_1.png', '428320_2.png', '428320_3.png', '428320_4.png', '428320_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133907&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428311', '스트레치코튼터틀넥T', '적당한 두께감으로 단품으로도 착용하기 좋은 T.
· 깔끔한 실루엣에 스트레치성을 더해 착용감이 뛰어남.', 12900, 'F', 'T', 'SH', '428311_1.png', '428311_2.png', '428311_3.png', '428311_4.png', '428311_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133905&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428308', '스트레치코튼7부크루넥T', '한 장만 입어도 깔끔하면서도 맵시 있는 스타일을 연출할 수 있는 스트레치 코튼 크루넥 T셔츠.
· 컴팩트한 코튼 원사를 사용한 립 소재 사용.
· 웨이스트 주변이 피트 된 깔끔한 실루엣.
· 네크 라인의 스티치는 보이지 않도록 개선.', 12900, 'F', 'T', 'SH', '428308_1.png', '428308_2.png', '428308_3.png', '428308_4.png', '428308_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134597&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432523', '스트레치코튼반팔보트넥T', '보트넥 디자인으로 목 주변이 깔끔해 보이는 스트레치 코튼 보트넥 T셔츠.
· 다소 두꺼운 소재감으로 비침 현상이 적은 면 소재 사용.
· 5부 소매 기장.
· 보트넥 타입.', 12900, 'F', 'T', 'SH', '432523_1.png', '432523_2.png', '432523_3.png', '432523_4.png', '432523_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134591&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431868', '립크루넥긴팔T', '깔끔한 인상을 주는 립 크루넥 T셔츠.
· 두께감 있는 립 원단 채용.
· 크루넥 타입.', 19900, 'F', 'T', 'SH', '431868_1.png', '431868_2.png', '431868_3.png', '431868_4.png', '431868_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127473&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422691', '립코튼하이넥5부T', '보풀 현상이 적으면서도 부드러운 감촉을 느낄 수 있는 립 코튼 하이넥 T셔츠.
· 보풀 현상을 억제한 컴팩트 코튼 원사 채용.
· 5부 소매 기장.', 12900, 'F', 'T', 'SH', '422691_1.png', '422691_2.png', '422691_3.png', '422691_4.png', '422691_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127467&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422692', '립코튼긴팔크루넥T', '보풀 현상이 적으면서도 부드러운 감촉을 느낄 수 있는 립 코튼 크루넥 T셔츠.
· 보풀 현상을 억제한 컴팩트 코튼 원사 채용.', 12900, 'F', 'T', 'SH', '422692_1.png', '422692_2.png', '422692_3.png', '422692_4.png', '422692_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134622&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428327', '히트텍후리스터틀넥긴팔T', '따뜻하면서도 부드러운 착용감뿐만 아니라 소재 특유의 드레이프감을 느낄 수 있는 히트텍 후리스 터틀넥 T셔츠.
· 히트텍 소재 사용.
· 흡습발열*, 보온 기능.
· 미세 기모 가공 처리.
· 터틀넥 타입.', 14900, 'F', 'T', 'SH', '428327_1.png', '428327_2.png', '428327_3.png', '428327_4.png', '428327_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134595&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430872', 'U립라운드넥T(반팔)', '깊은 네크 라인이 특징인 립 라운드 넥 T.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 유연한 텐셀을 사용한 저지 소재의 립 티셔츠.', 19900, 'F', 'T', 'SH', '430872_1.png', '430872_2.png', '430872_3.png', '430872_4.png', '430872_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134594&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706#
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425663', 'U크루넥T(반팔)', '베이직한 디자인이면서도 부드러운 착용감을 자랑하는 크루넥 T셔츠.
유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 부드러운 감촉을 느낄 수 있는 면 소재 100% 사용하였습니다.
· 네크라인의 립 폭은 굵게 디자인.
· 소매단과 밑단의 실밥은 눈에 띄지 않도록 개선.', 12900, 'F', 'T', 'SH', '425663_1.png', '425663_2.png', '425663_3.png', '425663_4.png', '425663_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129391&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422697', 'SUPIMA코튼크루넥반팔T', '부드러운 감촉을 느낄 수 있는 SUPIMA COTTON 크루넥 T셔츠.
· 수피마코튼 소재 100% 사용.', 9900, 'F', 'T', 'SH', '422697_1.png', '422697_2.png', '422697_3.png', '422697_4.png', '422697_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129392&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422698', 'SUPIMA코튼반팔V넥T', '부드러운 감촉을 느낄 수 있는 SUPIMA COTTON V넥 T셔츠.
· 수피마코튼 소재 100% 사용.', 9900, 'F', 'T', 'SH', '422698_1.png', '422698_2.png', '422698_3.png', '422698_4.png', '422698_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134593&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432357', 'AIRism심리스롱긴팔T', '긴 기장감으로 캐주얼한 스타일에 제격이면서도 쾌적한 착용감을 느낄 수 있는 AIRism 심리스 롱 T셔츠.
· 드라이, 접촉 냉감 기능.
· 자외선 차단(UPF40)* 기능.
* 자외선 차단평가 (JIS L 1925:2019) 결과 기준.', 29900, 'F', 'T', 'SH', '432357_1.png', '432357_2.png', '432357_3.png', '432357_4.png', '432357_5.png');

--16
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127474&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422809', 'AIRism V넥롱반팔T', '보송보송하면서도 편한 착용감을 느낄 수 있는 AIRism V넥 롱 T셔츠.
· 에어리즘 소재 사용.
· 드라이, 접촉 냉감 기능.
· V넥 타입.', 19900, 'F', 'T', 'SH', '422809_1.png', '422809_2.png', '422809_3.png', '422809_4.png', '422809_5.png');

--17
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129393&displayNo=NQ1A02A11A17&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('422812', 'DRY-EX크루넥반팔T', '쾌적한 착용감을 자랑하여 스포츠 씬에서부터 일상 생활까지 착용하기 좋은 DRY-EX 크루넥 T셔츠
· 드라이 EX 소재 사용.
· 맵핑 디자인.', 19900, 'F', 'T', 'SH', '422812_1.png', '422812_2.png', '422812_3.png', '422812_4.png', '422812_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--여자 니트 F T KN

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133935&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428858', 'EFM크루넥긴팔가디건', '섬세하면서도 우아한 감촉을 느낄 수 있는 EFM 크루넥 가디건.
· 마이크로 극세 메리노 울 소재 100% 사용.
· 물세탁 가능.', 39900, 'F', 'T', 'KN', '428858_1.png', '428858_2.png', '428858_3.png', '428858_4.png', '428858_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133936&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428859', 'EFM V넥긴팔가디건', '고급스러우면서도 우아한 감촉을 느낄 수 있는 EFM V넥 가디건.
· 마이크로 극세 메리노 울 소재 100% 사용.
· 물세탁 가능.
· V넥 타입.', 39900, 'F', 'T', 'KN', '428859_1.png', '428859_2.png', '428859_3.png', '428859_4.png', '428859_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133934&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428855', 'EFM크루넥긴팔스웨터', '섬세하면서도 우아한 감촉을 느낄 수 있는 EFM 크루넥 스웨터.
· 마이크로 극세 메리노 울 소재 100% 사용.
· 물세탁 가능.', 29900, 'F', 'T', 'KN', '428855_1.png', '428855_2.png', '428855_3.png', '428855_4.png', '428855_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135202&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432730', 'U EFM립크루넥긴팔스웨터', '엑스트라 화인 메리노 울을 사용하여 스타일리시한 분위기를 자아내는 EFM 립 크루넥 스웨터.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.', 39900, 'F', 'T', 'KN', '432730_1.png', '432730_2.png', '432730_3.png', '432730_4.png', '432730_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135203&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432731', 'U EFM립터틀넥긴팔스웨터', '엑스트라 화인 메리노 울을 사용하여 스타일리시한 분위기를 자아내는 EFM 립 터틀넥 스웨터.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.', 39900, 'F', 'T', 'KN', '432731_1.png', '432731_2.png', '432731_3.png', '432731_4.png', '432731_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134636&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428856', 'EFM V넥긴팔스웨터', '부드러우면서도 고급스러운 감촉을 느낄 수 있는 EFM V넥 스웨터.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 워셔블(물세탁) 사양.
· V넥 타입.', 29900, 'F', 'T', 'KN', '428856_1.png', '428856_2.png', '428856_3.png', '428856_4.png', '428856_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135201&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428857', 'EFM터틀넥긴팔스웨터', '고급스러운 소재감을 느낄 수 있는 EFM 터틀넥 스웨터.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 워셔블(물세탁) 사양.
· 소매 밑단의 립 부분을 길게 설정하여 손목이 가늘어 보입니다.', 39900, 'F', 'T', 'KN', '428857_1.png', '428857_2.png', '428857_3.png', '428857_4.png', '428857_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31122111&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('418673', 'EFM립터틀넥긴팔스웨터', '고급스러운 감촉을 느낄 수 있는 EFM 립 터틀넥 스웨터.
· 19.5 마이크로 극세 메리노 울 소재 100% 사용.
· 물 세탁이 가능한 사양.
· 터틀넥 타입.', 29900, 'F', 'T', 'KN', '418673_1.png', '418673_2.png', '418673_3.png', '418673_4.png', '418673_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133932&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428863', '캐시미어크루넥긴팔스웨터', '섬유의 보석이라 불리는 캐시미어 소재를 100% 사용하여 부드러우면서도 따뜻한 착용감을 자랑하는 캐시미어 크루넥 스웨터.
· 매끄러우면서도 부드러운 감촉을 느낄 수 있습니다.
· 엄격한 품질 관리로 만들어져 일상을 럭셔리하게 연출해줍니다.
· 크루넥 타입.
· 소매 밑단의 립 부분을 길게 설정하여 손목이 가늘어 보입니다.', 89900, 'F', 'T', 'KN', '428863_1.png', '428863_2.png', '428863_3.png', '428863_4.png', '428863_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134634&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428866', '캐시미어크루넥긴팔가디건', '섬유의 보석이라 불리는 캐시미어 소재를 100% 사용하여 부드러우면서도 따뜻한 착용감을 자랑하는 캐시미어 크루넥 가디건
· 매끄러우면서도 부드러운 감촉을 느낄 수 있습니다.
· 엄격한 품질 관리로 만들어져 일상을 럭셔리하게 연출해줍니다.
· 크루넥 타입.
· 소매 밑단의 립 부분을 길게 설정하여 손목이 가늘어 보입니다.', 99000, 'F', 'T', 'KN', '428866_1.png', '428866_2.png', '428866_3.png', '428866_4.png', '428866_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133933&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428864', '캐시미어터틀넥긴팔스웨터', '섬유의 보석이라 불리는 캐시미어 소재를 100% 사용하여 부드러우면서도 따뜻한 착용감을 자랑하는 캐시미어 터틀넥 스웨터.
· 매끄러우면서도 부드러운 감촉을 느낄 수 있습니다.
· 엄격한 품질 관리로 만들어져 일상을 럭셔리하게 연출해줍니다.
· 터틀넥 타입.
· 소매 밑단의 립 부분을 길게 설정하여 손목이 가늘어 보입니다.', 99000, 'F', 'T', 'KN', '428864_1.png', '428864_2.png', '428864_3.png', '428864_4.png', '428864_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133938&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428861', '램스울크루넥긴팔스웨터', '부드러우면서도 따뜻한 착용감을 자랑하는 램스울 크루넥 스웨터.
· 립 사양의 넥 타입.
· 19.5 마이크로 프리미엄 램스 울 소재 100% 사용.
· 부드러우면서도 팽창감이 있어 가벼운 소재감을 느낄 수 있습니다.
· 크루넥 타입.', 39900, 'F', 'T', 'KN', '428861_1.png', '428861_2.png', '428861_3.png', '428861_4.png', '428861_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134646&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428867', '수플레얀하이넥긴팔스웨터', '수플레 케이크처럼 폭신폭신하면서도 가벼운 착용감을 느낄 수 있는 수플레얀 하이넥 스웨터.
· 신축성이 있는 부클레 실을 사용하여 폭신폭신하면서도 부드러운 감촉 실현하여 따끔거리지 않습니다.', 29900, 'F', 'T', 'KN', '428867_1.png', '428867_2.png', '428867_3.png', '428867_4.png', '428867_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135561&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432708', '수플레얀크루넥긴팔스웨터', '스웨트 셔츠와 같은 디테일의 부드럽고 폭신한 수플레 소재 스웨터.
· 고급스러우면서도 캐주얼한 느낌을 줍니다. 함께 입을 수 있는 팬츠도 같이 만나보세요!', 39900, 'F', 'T', 'KN', '432708_1.png', '432708_2.png', '432708_3.png', '432708_4.png', '432708_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135558&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430931', 'JWA크롭크루넥긴팔스웨터', '크롭기장의 디자인으로 여성스러움을 더한 래글런 슬리브의 청키 니트 스웨터.
· 접을 수 있는 긴 소매 디테일이 스타일리시한 디자인의 겨울 필수품을 만듭니다.', 49900, 'F', 'T', 'KN', '430931_1.png', '430931_2.png', '430931_3.png', '430931_4.png', '430931_5.png');

--16
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135560&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432707', 'JWA터틀넥긴팔스웨터A', '부드럽고 편안한 실루엣이 특징인 이 스웨터는 단독으로 착용하거나 레이어드하여 완벽하게 착용할 수 있습니다.
· 심플하면서도 귀여운 인상을 주는 니트.', 49900, 'F', 'T', 'KN', '432707_1.png', '432707_2.png', '432707_3.png', '432707_4.png', '432707_5.png');

--17
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134654&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432732', 'U로우게이지터틀넥긴팔스웨터', '스타일리시한 분위기를 자아내는 로우 게이지 터틀넥 스웨터.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.', 49900, 'F', 'T', 'KN', '432732_1.png', '432732_2.png', '432732_3.png', '432732_4.png', '432732_5.png');

--18
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134648&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430929', 'U메리노블렌드V넥긴팔가디건', '메리노 울을 사용하여 스타일리시한 분위기를 자아내는 메리노 블렌드 V넥 가디건.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 19.5 마이크론 극세 메리노 울에 폴리에스터를 블렌딩한 소재 사용.', 49900, 'F', 'T', 'KN', '430929_1.png', '430929_2.png', '430929_3.png', '430929_4.png', '430929_5.png');

--19
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134653&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432729', 'U메리노블렌드크루넥스웨터', '메리노 울을 사용하여 스타일리시한 분위기를 자아내는 메리노 블렌드 크루넥 스웨터.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 19.5 마이크론 극세 메리노 울에 폴리에스터를 블렌딩한 소재 사용.', 49900, 'F', 'T', 'KN', '432729_1.png', '432729_2.png', '432729_3.png', '432729_4.png', '432729_5.png');

--20
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135207&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432087', '3D니트자카드스웨터', '입체적인 실루엣과 고급스러운 소재감을 즐길 수 있는 3D 니트 자카드 스웨터.
· 시대와 세대를 넘어 사랑 받고 있는 프렌치 시크의 대명사 이네스 드 라 프레상쥬와 스페셜 콜라보레이션.
· 신축성이 있는 원사를 사용하였습니다.
· 홀가먼트 기술을 채용하여 입체적인 실루엣을 실현하고 봉제선이 없어 부드러운 착용감을 느낄 수 있습니다.
· 전통적인 페어 아일 무늬를 자카드 짜임으로 표현하였습니다.', 49900, 'F', 'T', 'KN', '432087_1.png', '432087_2.png', '432087_3.png', '432087_4.png', '432087_5.png');

--21
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134641&displayNo=NQ1A02A20A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430553', '3D램스울블렌드터틀넥스웨터', '3D 니트만의 아름다운 라인을 즐길 수 있는 3D 니트 램스울 블렌드 터틀넥 스웨터.
· 19.5 마이크로의 고급 모직 X 나일론 혼합 소재 사용.
· 홀가먼트 기술 채용.
· 텍스처감이 있는 니트 짜임 실현.
· 목 주변에 살짝 여유감 있는 터틀넥 타입.
· 어깨에서부터 소매 밑단까지는 약간 둥근 실루엣이 디자인의 포인트.
· 바디 부분도 둥근 실루엣으로 설정.', 49900, 'F', 'T', 'KN', '430553_1.png', '430553_2.png', '430553_3.png', '430553_4.png', '430553_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--여자 스커트 F B SK

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134652&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432728', 'U메리노블렌드플레어스커트', '메리노 울을 사용하여 스타일리시한 분위기를 자아내는 메리노 블렌드 플레어 스커트.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 19.5 마이크론 극세 메리노 울에 폴리에스터를 블렌딩한 소재 사용.', 39900, 'F', 'B', 'SK', '432728_1.png', '432728_2.png', '432728_3.png', '432728_4.png', '432728_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134649&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430950', '수플레얀플레어스커트', '부드러운 감촉을 느낄 수 있으면서도 귀여운 인상을 주는 수플레얀 플레어 스커트.
· 가벼우면서도 부드러운 감촉을 느낄 수 있는 부클레 실 사용.
· 따끔따끔하지 않은 감촉 실현.
· 볼륨감을 추가한 A라인 실루엣.
· 앞 뒷면의 밑단 길이를 조정.', 39900, 'F', 'B', 'SK', '430950_1.png', '430950_2.png', '430950_3.png', '430950_4.png', '430950_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135204&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432733', '3D니트EFM립플레어스커트', '고급스러우면서도 섬세한 감촉을 즐길 수 있는 3D 니트 EFM 립 플레어 스커트.
· 고급스러운 광택감을 느낄 수 있는 메리노 울 소재 100% 사용.
· 홀가먼트 기술 채용.
· 따끔따끔하지 않은 감촉 실현.
· 플레어 실루엣.', 59900, 'F', 'B', 'SK', '432733_1.png', '432733_2.png', '432733_3.png', '432733_4.png', '432733_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135532&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432354', 'JWA디자인햄스커트', '플리츠 뿐만 아니라, 개성있는 컷팅 디자인으로 재미를 더한 스커트.
· 하루종일 움직임에도 깔끔함을 유지해주는 심플한 플리츠 디자인.', 49900, 'F', 'B', 'SK', '432354_1.png', '432354_2.png', '432354_3.png', '432354_4.png', '432354_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135530&recopick=4&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('435470', 'JWA이지와이드체크크롭팬츠', '와이드실루엣으로 편안한 착용감의 크롭팬츠.
· 릴렉스감을 주며 웨이스트 밴드사양으로 착용하기 쉽습니다.
· 코디에 포인트를 주는 클래식한 체크 무늬 디자인.', 49900, 'F', 'B', 'SK', '435470_1.png', '435470_2.png', '435470_3.png', '435470_4.png', '435470_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135531&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706#
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429209', '쉬폰플리츠롱스커트', '흔들리는 치마 자락이 아름다운 인상을 주는 쉬폰 플리츠 롱 스커트.
· 웨스트 밴스 사양.
· 웨스트 앞 부분은 밴드가 보이지 않는 타입.', 39900, 'F', 'B', 'SK', '429209_1.png', '429209_2.png', '429209_3.png', '429209_4.png', '429209_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31130441&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('427032', '쉬폰플리츠프린트롱스커트', '푹신푹신한 소재감을 느낄 수 있으면서도 움직일 때마다 흔들리는 주름이 우아한 인상을 주는 쉬폰 플리츠 프린트 롱 스커트.
· 쉬폰 소재 사용.
· 고급스러운, 라인 실루엣.
· 랜덤 도트 무늬 디자인.', 39900, 'F', 'B', 'SK', '427032_1.png', '427032_2.png', '427032_3.png', '427032_4.png', '427032_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127450&recopick=4&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425371', '쉬폰플리츠롱스커트', '쉬폰 소재 특유의 부드러운 감촉을 느낄 수 있는 쉬폰 플리츠 롱 스커트.
· 쉬폰 소재 사용.
· 이지 웨이스트 사양.
· 플리츠 디자인.', 39900, 'F', 'B', 'SK', '425371_1.png', '425371_2.png', '425371_3.png', '425371_4.png', '425371_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134532&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429211', '아코디언플리츠롱스커트', '주름의 폭을 변경하여 더 아름다운 실루엣으로 설정한 아코디언 플리츠 롱 스커트.
· 섬세한 아코디언 주름 디자인.
· A라인 실루엣.
· 안감 추가.
· 탄력감 있는 소재를 사용하여 세탁 후에도 주름이 잘 지지 않습니다.
· 밑단으로 갈수록 주름의 폭을 넓게 설정한 볼륨 있는 실루엣.', 39900, 'F', 'B', 'SK', '429211_1.png', '429211_2.png', '429211_3.png', '429211_4.png', '429211_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134536&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431464', 'U데님펜슬롱스커트', '스트레치 소재로 움직임이 편안한 데님 펜슬 롱 스커트.
· 13온스의 카이하라 데님 원단 사용.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 미니멀하고 세련된 슬림한 실루엣에 프런트 슬릿을 추가.', 49900, 'F', 'B', 'SK', '431464_1.png', '431464_2.png', '431464_3.png', '431464_4.png', '431464_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133930&displayNo=NQ1A02A12A06&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('428343', '데님저지스커트', '데님 같은 외형이면서도 부드럽고 편안한 착용감을 느낄 수 있는 데님 저지 스커트.
· 신축성이 있는 저지 원단 사용.
· 트렌드에 맞춰 치마 길이를 짧게 수정.
· 웨이스트 드로우는 내측으로 변경.
· 프론트에 스티치 추가.', 29900, 'F', 'B', 'SK', '428343_1.png', '428343_2.png', '428343_3.png', '428343_4.png', '428343_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134533&recopick=4&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429212', '개더롱스커트', '가볍게 흔들리는 실루엣이 아름다운 개더 롱 스커트.
· 플리츠 디자인.
· 웨스트 밴드 사양.', 29900, 'F', 'B', 'SK', '429212_1.png', '429212_2.png', '429212_3.png', '429212_4.png', '429212_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?displayNo=&goodsNo=NQ31135184&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431466', 'U새틴미디스커트', '광택감 있는 소재로 우아한 인상을 주는 새틴 미디 스커트.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 슬립 스커트에서 영감을 받은 디자인으로 광택감 있는 새틴 원단과 그로그랭 테이프 벨트 사용.', 39900, 'F', 'B', 'SK', '431466_1.png', '431466_2.png', '431466_3.png', '431466_4.png', '431466_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?displayNo=&goodsNo=NQ31134537&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('433113', '트위스트플리츠머메이드스커트', '광택 있는 소재감과 아름다운 머메이드 실루엣을 즐길 수 있는 트위스트 플리츠 롱 스커트.
· 시대와 세대를 넘어 사랑 받고 있는 프렌치 시크의 대명사 이네스 드 라 프레상쥬와 스페셜 콜라보레이션.
· 트위스트 주름을 가공하여 캐주얼한 인상을 줍니다.
· 광택감이 있는 새틴 소재를 사용하였습니다.
· 트위스트 주름은 신축성이 있어 깔끔하면서도 맵시 있는 인상을 줍니다.
· 웨스트는 밴드 사양으로 편하게 착용할 수 있습니다.
· 비틀어 보관하면 주름이 오래 유지됩니다.
· 워셔블(물세탁) 사양입니다.', 39900, 'F', 'B', 'SK', '433113_1.png', '433113_2.png', '433113_3.png', '433113_4.png', '433113_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134535&recopick=4&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430501', '트위스트플리츠롱스커트', '2종류의 주름을 채용하면서도 밑단은 주름을 풀어 깔끔한 라인을 표현한 트위스트 플리츠 롱 스커트.
· 시대와 세대를 넘어 사랑 받고 있는 프렌치 시크의 대명사 이네스 드 라 프레상쥬와 스페셜 콜라보레이션.
· 아름다운 A라인 실루엣을 표현했습니다.
· 절묘한 프린트 디자인이 포인트.', 39900, 'F', 'B', 'SK', '430501_1.png', '430501_2.png', '430501_3.png', '430501_4.png', '430501_5.png');


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--여자 긴바지 F B LP 15

--1
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134513&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430134', '슬라우치테이퍼드앵클진', '드롭 웨스트 디자인으로 웨스트 주변이 깔끔해 보이면서도 편안한 착용감을 자랑하는 슬라우치 테이퍼드 앵클진.
· 테이퍼드 실루엣.', 49900, 'F', 'B', 'LP', '430134_1.png', '430134_2.png', '430134_3.png', '430134_4.png', '430134_5.png');

--2
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31129349&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('426284', '릴랙스피트슬라우치앵클진', '새로운 실루엣과 빈티지 가공을 더해 트렌디한 인상을 주는 슬라우치 테이퍼드 앵클 진.
· 카이하라사 면 소재 100%의 데님 원단 사용.
· 슬라우치 실루엣(릴랙스 피트) 디자인.
· 밑단은 테이퍼드 실루엣.', 49900, 'F', 'B', 'LP', '426284_1.png', '426284_2.png', '426284_3.png', '426284_4.png', '426284_5.png');

--3
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134512&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429107', '슬림스트레이트하이라이즈진', '길고 곧아 보이는 다리 라인을 연출할 수 있는 슬림피트 스트레이트 하이라이즈 진.
· 트렌디한 스트레이트 실루엣.
· 카이하라사의 데님 원단 채용.
· 하이라이즈 타입.
· 배 주위가 깔끔해 보이는 포켓 원단 채용.
· 밑단 수선 시 뒤의 길이가 발 뒤꿈치 아래에 오도록 하면 플랫뿐만 아니라 힐을 신어도 적당한 기장감입니다.
· 데님의 신장율을 조정하여 편한 착용감을 느낄 수 있습니다.', 49900, 'F', 'B', 'LP', '429107_1.png', '429107_2.png', '429107_3.png', '429107_4.png', '429107_5.png');

--4
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134516&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431737', '히트텍스트레치하이라이즈진', '신축성이 있어 편하면서도 따뜻한 착용감을 자랑하는 히트텍 스트레치 하이라이즈 진.
· 히트텍 소재의 울트라 스트레치 원단 사용.
· 흡습 발열* 기능.
· 기모 안감 처리.
· 앞 포켓은 기모 안감, 뒷 포켓에는 히트텍 안감 사용.
· 하이라이즈 타입.
· 테이퍼드 실루엣.
*우리 몸의 수증기를 열에너지로 바꿔주는 기술 적용.', 49900, 'F', 'B', 'LP', '431737_1.png', '431737_2.png', '431737_3.png', '431737_4.png', '431737_5.png');

--5
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127438&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425499', '울트라데미지스트레치진', '놀라운 신축성으로 움직임이 편하면서도 데미지 디자인을 즐길 수 있는 울트라 스트레치 진.
· 울트라 스트레치 데님 원단 사용.
· 신축성이 있어 무릎이 잘 튀어나오지 않습니다.
· 스키니 피트 실루엣.
· 밑단 컷오프 데미지 가공 처리.
· 미들 라이즈 타입.
· 백 포켓의 크기와 모양, 위치 개선.
· 블랙 색상은 특수 가공 처리하여 먼지가 잘 붙지 않습니다.', 49900, 'F', 'B', 'LP', '425499_1.png', '425499_2.png', '425499_3.png', '425499_4.png', '425499_5.png');

--6
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135525&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430460', '스키니플레어앵클진', '플레어한 실루엣과 앵클 기장이 포인트인 스키니 플레어 앵클 진.
· 카이하라 사의 데님 원단 사용.
· 데미지 가공 추가.', 49900, 'F', 'B', 'LP', '430460_1.png', '430460_2.png', '430460_3.png', '430460_4.png', '430460_5.png');

--7
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31130411&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425517', '하이라이즈스키니플레어앵클진', '빈티지 스타일의 데미지 디테일을 즐길 수 있는 하이라이즈 스키니 플레어 앵클진.
· 플레어 실루엣.
· 스키니 피트 사양.', 49900, 'F', 'B', 'LP', '425517_1.png', '425517_2.png', '425517_3.png', '425517_4.png', '425517_5.png');

--8
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31123333&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('421379', '하이라이즈스키니앵클진', '배 주위뿐만 아니라 다리 라인을 깔끔하게 연출시켜 주는 하이라이즈 스키니 앵클진(Beauty compression).
· 카이하라 사의 데님 소재 사용.
· 스키니 스트레이트 실루엣.', 39900, 'F', 'B', 'LP', '421379_1.png', '421379_2.png', '421379_3.png', '421379_4.png', '421379_5.png');

--9
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31124180&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('421438', '히트텍스키니진', '안감은 기모 원단을 채용하여 부드러우면서도 따뜻한 착용감을 느낄 수 있는 히트텍 스키니 진.
· 카이하라사,도레이사와 공동 개발한 히트텍 데님 소재 사용.
· 하이라이즈 n 테이퍼드 타입.
· 프론트 포켓 안면은 기모 소재 사용.
· 흡습, 흡습발열 기능.', 39900, 'F', 'B', 'LP', '421438_1.png', '421438_2.png', '421438_3.png', '421438_4.png', '421438_5.png');

--10
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134514&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431421', 'U하이라이즈보이프렌드진', '빈티지한 스타일을 연출할 수 있는 하이라이즈 보이프렌드 진.
유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 카이하라 사의 데님 원단을 채용하였습니다.
· 클래식한 스트레이트 실루엣입니다.', 49900, 'F', 'B', 'LP', '431421_1.png', '431421_2.png', '431421_3.png', '431421_4.png', '431421_5.png');

--11
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134515&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431463', 'U플레어진', '센터 플리츠를 넣은 깔끔한 실루엣의 플레어 진.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 카이하라 데님 원단 사용.
· 폴리에스터를 블렌딩한 데님 소재 사용.', 49900, 'F', 'B', 'LP', '431463_1.png', '431463_2.png', '431463_3.png', '431463_4.png', '431463_5.png');

--12
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134522&recopick=4&product_type=R
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('431418', 'U트윌와이드팬츠', '70년대 디자인에서 영감을 얻은 와이드 실루엣이 특징인 트윌 와이드 팬츠.
· 유니클로 파리 RnD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 광택감과 드레이프감 있는 소재 사용.
· 주름이 잘 생기지 않는 이지 케어 가공 추가.', 39900, 'F', 'B', 'LP', '431418_1.png', '431418_2.png', '431418_3.png', '431418_4.png', '431418_5.png');

--13
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127441&displayNo=NQ1A02A12A02&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425520', 'U와이드피트커브진', '웨이스트 라인이 깔끔하면서도 아름다운 실루엣을 자랑하는 와이드 피트 커브 진.
· 크리스토퍼 르메르가 이끄는 파리 디자이너 팀이 제안하는 혁신적이면서도 새로운 LifeWear 컬렉션.
· 기장을 76cm로 개량.
· 면 소재 100%의 데님 원단 사용.
· 와이드 실루엣.
· 라이즈를 깊게 설정하여 트렌디하면서도 편한 착용감을 느낄 수 있습니다.', 39900, 'F', 'B', 'LP', '425520_1.png', '425520_2.png', '425520_3.png', '425520_4.png', '425520_5.png');

--14
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31133898&displayNo=NQ1A02A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429128', '스마트앵클팬츠', '웨이스트 밴드가 보이지 않도록 개선하여 셔츠 인 스타일도 부담 없이 즐길 수 있는 스마트 앵클팬츠.
· 웨이스트 밴드와 팬츠는 같은 원단을 사용한 디자인으로 개선.
· 가로, 세로 두가지 방향으로 신축성을 더한 2WAY 스트레치 소재 사용.
· 이지케어 가공 처리.
· 센터 주름 처리.
· 테이퍼드 실루엣.', 39900, 'F', 'B', 'LP', '429128_1.png', '429128_2.png', '429128_3.png', '429128_4.png', '429128_5.png');

--15
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31132314&displayNo=NQ1A02A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430616', '스마트앵클팬츠(체크A)', '2WAY 스트레치 기능으로 더 편한 착용감을 느낄 수 있으면서도 깔끔한 인상을 주는 스마트 앵클 팬츠.
· 가로, 세로 두가지 방향으로 신축성을 더한 2WAY 스트레치 소재 사용.
· 프론트 오픈 사양으로 변경.
· 테이퍼드 실루엣.
· 체크 무늬 디자인.', 39900, 'F', 'B', 'LP', '430616_1.png', '430616_2.png', '430616_3.png', '430616_4.png', '430616_5.png');

--16
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31132315&displayNo=NQ1A02A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430617', '스마트앵클팬츠(체크B)', '2WAY 스트레치 기능으로 더 편한 착용감을 느낄 수 있으면서도 깔끔한 인상을 주는 스마트 앵클 팬츠.
· 가로, 세로 두가지 방향으로 신축성을 더한 2WAY 스트레치 소재 사용.
· 프론트 오픈 사양으로 변경.
· 테이퍼드 실루엣.
· 체크 무늬 디자인.', 39900, 'F', 'B', 'LP', '430617_1.png', '430617_2.png', '430617_3.png', '430617_4.png', '430617_5.png');

--17
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134518&displayNo=NQ1A02A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429149', '스마트앵클팬츠(기모)', '깔끔한 디자인으로 부담없이 즐길 수 있는 스마트 앵클 팬츠.
· 2WAY 스트레치 소재 사용.
· 손질의 간단한 이지 케어 가공 추가.
· 팬츠에 사용된 원단을 웨이스트 밴드에도 동일하게 사용하여 디자인성 업.
· 깔끔한 실루엣을 만들어 주는 센터 플리츠 가공 추가.', 39900, 'F', 'B', 'LP', '429149_1.png', '429149_2.png', '429149_3.png', '429149_4.png', '429149_5.png');

--18
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31127443&displayNo=NQ1A02A12A03&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('425342', '스마트플레어앵클팬츠', '2WAY 스트레치 사양으로 더욱 편안한 착용감을 자랑하고, 클린룩뿐만 아니라 캐주얼룩에도 스타일링하기 좋은 스마트 플레어 앵클팬츠.
· 가로, 세로 두가지 방향으로 신축성을 더한 2WAY 스트레치 소재 사용.
· 이지케어 가공 처리.', 39900, 'F', 'B', 'LP', '425342_1.png', '425342_2.png', '425342_3.png', '425342_4.png', '425342_5.png');

--19
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135794&displayNo=NQ1A02A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432709', 'JWA수플레얀와이드팬츠', '부드럽고 폭신한 수플레 소재의 와이드 실루엣으로 편안한 착용감을 자랑합니다.
· 부드러운 소재감인만큼 피부에 닿아도 불편함이 없습니다.', 49900, 'F', 'B', 'LP', '432709_1.png', '432709_2.png', '432709_3.png', '432709_4.png', '432709_5.png');

--20
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135527&displayNo=NQ1A02A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('432355', 'JWA이지와이드팬츠', '편안하게 착용하기 좋은 와이드 팬츠.
· 와이드 실루엣으로 아름다운 옷 맵시를 뽐내보세요.
· 웨이스트 밴드 사양으로 착용하기 쉽다.', 49900, 'F', 'B', 'LP', '432355_1.png', '432355_2.png', '432355_3.png', '432355_4.png', '432355_5.png');

--21
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134521&displayNo=NQ1A02A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('429204', '하이웨이스트기모와이드팬츠', '울 같은 소재감을 느낄 수 있으면서도 물세탁이 가능해 손질이 간편한 하이웨이스트 와이드 팬츠.
· 와이드 스트레이트 실루엣.
· 워셔블(물세탁) 사양.', 39900, 'F', 'B', 'LP', '429204_1.png', '429204_2.png', '429204_3.png', '429204_4.png', '429204_5.png');

--22
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31134629&displayNo=NQ1A02A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('430108', '스트레치보아후리스팬츠', '입는순간 따뜻하고 바람이 잘 통하지 않아 더 따뜻한 보아 후리스 팬츠.
· 방풍 사양에 폭신폭신한 보아 후리스 소재를 플러스.
· 0.008mm의 필름으로 차가운 바람은 막아주며 착용감은 가볍고 부드러우며 따뜻합니다.
· 안감의 후리스로 피부에 닿는 감촉이 부드럽습니다.', 39900, 'F', 'B', 'LP', '430108_1.png', '430108_2.png', '430108_3.png', '430108_4.png', '430108_5.png');

--23
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31123187&displayNo=NQ1A02A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('418249', '보아스웨트팬츠', '부드러운 착용감뿐만 아니라 깔끔한 실루엣을 자랑하는 보아 스웨트 팬츠.
· 기모 안감 채용.', 29900, 'F', 'B', 'LP', '418249_1.png', '418249_2.png', '418249_3.png', '418249_4.png', '418249_5.png');

--24
--https://store-kr.uniqlo.com/display/showDisplayCache.lecs?goodsNo=NQ31135529&displayNo=NQ1A02A12A05&stonType=P&storeNo=83&siteNo=50706
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2, product_image_3, product_image_4, product_image_5) 
VALUES ('435469', 'JWA이지와이드팬츠', '와이드실루엣으로 편안한 착용감의 롱 팬츠.
· 웨이스트 밴드 사양으로 착용하기 쉽습니다.
· 핀 스트라이프 디자인.', 49900, 'F', 'B', 'LP', '435469_1.png', '435469_2.png', '435469_3.png', '435469_4.png', '435469_5.png');

commit;




--WISHLIST
INSERT INTO wishList (wish_no, member_id, product_no) VALUES (wishlist_wish_no_seq.nextval, 'uni4', '431464');

commit;

--cart
INSERT INTO cart
VALUES (cart_cart_no_SEQ.nextval, 1, 49900, 'M', 'uni1', 431464);

INSERT INTO cart 
VALUES (cart_cart_no_SEQ.nextval, 1, 39900, 'M', 'uni1', 433113);

INSERT INTO cart 
VALUES (cart_cart_no_SEQ.nextval, 1, 39900, 'M', 'uni1',432809);

INSERT INTO cart  
VALUES (cart_cart_no_SEQ.nextval, 3, 299700, 'S', 'uni2', 432049);

INSERT INTO cart 
VALUES (cart_cart_no_SEQ.nextval, 1, 59900, 'M', 'uni3', 435455);

commit;

--delivery
INSERT INTO DELIVERY
VALUES ('GEN', '일반', '3~4일', 3000);
INSERT INTO DELIVERY
VALUES ('EX', '특급', '1~2일', 6000);


--jumun
INSERT INTO jumun (jumun_no, jumun_date, jumun_status, jumun_tot_price, card_no, card_expire_date, card_cvc, card_member_name, member_id, delivery_no) 
VALUES (1, sysdate, 'Delivered', 79800, '1234 5678 9012 3456', '08/25', '123', '신혜원', 'uni1','GEN');


INSERT INTO jumun (jumun_no, JUMUN_DATE, JUMUN_STATUS, JUMUN_TOT_PRICE, CARD_NO, CARD_EXPIRE_DATE, CARD_CVC, CARD_MEMBER_NAME, MEMBER_ID, delivery_no) 
VALUES ((select NVL(MAX(jumun_no),0)+1 as jno from jumun), sysdate, 'Delayed', 99800, '9876 5432 1098 7654', '02/21', '456', '신지원', 'uni2','EX');

INSERT INTO jumun (jumun_no, JUMUN_DATE, JUMUN_STATUS, JUMUN_TOT_PRICE, CARD_NO, CARD_EXPIRE_DATE, CARD_CVC, CARD_MEMBER_NAME, MEMBER_ID, delivery_no) 
VALUES ((select NVL(MAX(jumun_no),0)+1 as jno from jumun), sysdate, 'Canceled', 59800, '1346 7964 2585 1973', '06/23', '789', '김민정', 'uni3','EX');

commit;


--jumun_detail
INSERT INTO jumun_detail 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, 'IDLF트위스트플리츠롱스커트', 'M', 39900, 1, 1, 433113);

INSERT INTO jumun_detail 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '보아후리스크루넥가디건(긴팔)', 'M', 39900, 1, 1, 435455);

INSERT INTO jumun_detail 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, 'IDLF3D니트자카드스웨터(긴팔)', 'S', 49900, 1, 1, 432087);

INSERT INTO jumun_detail 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '울트라스트레치진20FW', 'S', 49900, 1, 2, 432049);

INSERT INTO jumun_detail
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '플란넬체크셔츠(긴팔)', 'L', 29900, 1, 2, 426035);

INSERT INTO jumun_detail 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, 'U크루넥T(긴팔)20SS', 'L', 29900, 1, 2, 425213);

commit;




--review
INSERT INTO review (review_no, review_name, review_email, review_title, review_rating, review_content, member_id, product_no) 
VALUES (review_review_no_seq.nextval, '신혜원', 'uni1@gmail.com', '상품이 엄청 좋아요', 4, '이번에 신상이 잘 뽑혔네요 다음에도 잘부탁드릴게요 유니샵 >3<', 'uni1', '431464');

INSERT INTO review (review_no, review_name, review_email, review_title, review_rating, review_content, member_id, product_no) 
VALUES (review_review_no_seq.nextval, '신지수', 'uni4@gmail.com', '이번시즌은 아쉽네요', 3, '믿고 사는 사이트였는데 이번은 좀 아쉬워요', 'uni4', '432087');

INSERT INTO review (review_no, review_name, review_email, review_title, review_rating, review_content, member_id, product_no) 
VALUES (review_review_no_seq.nextval, '김민정', 'uni3@gmail.com', '최고로 만족스러워요!!', 5, '사이즈도 딱 맞고 컬러도 맘에 들어요 꺄르르륵', 'uni3', '431464');



commit;