--일반유저 추가
INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('helprun@naver.com', 'password', '순수', '권', to_date('1993/03/20', 'yyyy/MM/dd'), '01075127505');

INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('OMG_mim@naver.com', '150421', '미현', '김', to_date('1995/05/01', 'yyyy/MM/dd'), '01012345678');

INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('boyoung90@naver.com', 'password', '보영', '박', to_date('1990/02/12', 'yyyy/MM/dd'), '01015844215');

INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('chan@naver.com', 'password', 'Jackie', 'Chan', to_date('1954/04/07', 'yyyy/MM/dd'), '01017466521');

INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('syLim@naver.com', 'password', '성엽', '임', to_date('1993/12/23', 'yyyy/MM/dd'), '01038241557');

INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('Hoon@naver.com', 'password', '상훈', '이', to_date('1993/03/05', 'yyyy/MM/dd'), '01048961547');

INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('jihoon111@naver.com', 'password', '지훈', '정', to_date('1996/05/05', 'yyyy/MM/dd'), '01092214310');


INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('chul@naver.com', 'password', '철', '박', to_date('1992/01/23', 'yyyy/MM/dd'), '01095250246');

INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('bigmouth@naver.com', 'password', '태겸', '김', to_date('1998/07/13', 'yyyy/MM/dd'), '01077667267');

INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('dneeis@naver.com', 'password', '도현', '한', to_date('1992/06/25', 'yyyy/MM/dd'), '01020780687');

INSERT INTO gukbap_user (user_id, user_password, user_last_name, user_level) 
VALUES ('admin', 'admin', 'admin', 'admin');
commit;


-- useraddress 추가(user와 address를 참조)
INSERT INTO userAddress (userAddress_no, user_id, address_no) 
VALUES (userAddress_userAddress_no_SEQ.nextval, 'helprun@naver.com',24);
INSERT INTO userAddress (userAddress_no, user_id, address_no) 
VALUES (userAddress_userAddress_no_SEQ.nextval, 'helprun@naver.com',25);

INSERT INTO userAddress (userAddress_no, user_id, address_no) 
VALUES (userAddress_userAddress_no_SEQ.nextval, 'OMG_mim@naver.com',26);
INSERT INTO userAddress (userAddress_no, user_id, address_no) 
VALUES (userAddress_userAddress_no_SEQ.nextval, 'OMG_mim@naver.com',27);


-- 운영자 아이디 추가
INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone, user_level) 
VALUES (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone, 'admin');

--주소추가
insert into address values(address_address_no_SEQ.nextval,'국밥','교하로70','33-10','파주시','경기도/한국');
insert into address values(address_address_no_SEQ.nextval,'본전돼지국밥','중앙대로214번길','3-8','동구','부산/한국');
insert into address values(address_address_no_SEQ.nextval,'삼백집','도산대로17길','6','강남구','서울/한국');
insert into address values(address_address_no_SEQ.nextval,'중앙해장','영동대로86길','17','강남구','서울/한국');
insert into address values(address_address_no_SEQ.nextval,'돈수백','강남대로110길','13','강남구','서울/한국');
insert into address values(address_address_no_SEQ.nextval,'태평소국밥','온천동로65','50','유성구','대전/한국');
insert into address values(address_address_no_SEQ.nextval,'재기돼지국밥','강남대로110길','13','강남구','서울/한국');
insert into address values(address_address_no_SEQ.nextval,'돈수백','절영로49번길','25','영도구','부산/한국');

--제품추가
--제품 추가(국밥)
INSERT INTO product 
VALUES (11, '굴국밥', 8000, '사진', '싱싱한 통영산 굴이 가득 들어있는 영양만점 국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES (12, '돼지국밥', 8000, '사진', '돼지다리뼈를 넣고 우려낸 뽀얀국물에 돼지고기와 양념장이 올라가는 고기국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (13, '소고기국밥', 8500, '사진', '소고기에 콩나물과 우거지를 넣고 푹 끓인 얼큰한 국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (14, '순대국밥', 8000, '사진', '토종순대와 시래기를 넣고 끓인 푸짐한 양의 순대국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (15, '콩나물국밥', 7000, '사진', '무공해로 재배되는 콩나물에 20여가지 천연재료를 사용하여 우려낸 콩나물국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (16, '테스트국밥', 7000, '사진', '테스트국밥', 0, 0, 1, 0, 'false', 0, sysdate);

/*
 * 시퀀스문제있는듯..
 * 사진처리
 * product_order 이건 뭐지
 * 
INSERT INTO product 
VALUES (product_product_no_SEQ, '굴국밥', 8000, '사진', '싱싱한 통영산 굴이 가득 들어있는 영양만점 국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES ( product_product_no_SEQ, '돼지국밥', 8000, '사진', '돼지다리뼈를 넣고 우려낸 뽀얀국물에 돼지고기와 양념장이 올라가는 고기국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ, '소고기국밥', 8500, '사진', '소고기에 콩나물과 우거지를 넣고 푹 끓인 얼큰한 국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ, '순대국밥', 8000, '사진', '토종순대와 시래기를 넣고 끓인 푸짐한 양의 순대국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ, '콩나물국밥', 7000, '사진', '무공해로 재배되는 콩나물에 20여가지 천연재료를 사용하여 우려낸 콩나물국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);
*/

--제품 추가(사이드)

INSERT INTO product
VALUES (21, '굴전', 14000, '사진', '굴 본연의 맛과 향을 느낄 수 있는 굴전', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (22, '모듬순대', 20000, '사진', '머릿고기와 세 가지 종류의 순대를 한 접시에', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (23, '소고기수육', 38000, '사진', '소고기 사태와 양지를 황태육수에 삶아 부추와 함께 즐기는 소고기수육', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (24, '테스트사이드', 38000, '사진', '테스트사이드', 0, 0, 2, 0, 'false', 0, sysdate);
/*

INSERT INTO product
VALUES ( product_product_no_SEQ, '굴전', 14000, '사진', '굴 본연의 맛과 향을 느낄 수 있는 굴전', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES ( product_product_no_SEQ, '모듬순대', 20000, '사진', '머릿고기와 세 가지 종류의 순대를 한 접시에', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '소고기수육', 38000, '사진', '소고기 사태와 양지를 황태육수에 삶아 부추와 함께 즐기는 소고기수육', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);
 */

--제품 추가(음료 및 주류)

INSERT INTO product
VALUES (31, '코카콜라(1.5)', 3000, '사진', '1.5L 큰 페트병(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (32, '코카콜라(355)', 2000, '사진', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (33, '스프라이트(1.5)', 3000, '사진', '1.5리터 큰 페트병(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (34, '스프라이트(355)', 2000, '사진', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (35, '참이슬후레쉬', 4000, '사진', '참이슬후레쉬(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (36, '처음처럼', 4000, '사진', '처음처럼(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (37, '테라병맥주', 5000, '사진', '테라병맥주(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (38, '카스병맥주', 5000, '사진', '카스병맥주(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (39, '테스트음료', 5000, '사진', '테스트음료', 0, 0, 3, 0, 'false', 0, sysdate);
/*
INSERT INTO product
VALUES (product_product_no_SEQ, '코카콜라(1.5)', 3000, '사진', '1.5L 큰 페트병(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '코카콜라(355)', 2000, '사진', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '스프라이트(1.5)', 3000, '사진', '1.5리터 큰 페트병(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '스프라이트(355)', 2000, '사진', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '참이슬후레쉬', 4000, '사진', '참이슬후레쉬(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '처음처럼', 4000, '사진', '처음처럼(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '테라병맥주', 5000, '사진', '테라병맥주(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '카스병맥주', 5000, '사진', '카스병맥주(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);
*/

--오더
INSERT INTO gukbap_order 
(order_no, order_status, order_total_price, order_desc, order_note, user_id) 
VALUES 
(gukbap_order_order_no_SEQ.nextval, 'preparing', 16500, '돼지국밥 외 1종', '고기 많이주세요', 'helprun@naver.com');

INSERT INTO order_detail (o_d_no, order_no, o_d_product_count, product_no) 
VALUES (order_detail_o_d_no_SEQ.nextval, gukbap_order_order_no_SEQ.currval, 1, 2);
INSERT INTO order_detail (o_d_no, order_no, o_d_product_count, product_no) 
VALUES (order_detail_o_d_no_SEQ.nextval, gukbap_order_order_no_SEQ.currval, 1, 3);

INSERT INTO gukbap_order 
(order_no, order_status, order_total_price, order_desc, order_note, user_id) 
VALUES 
(gukbap_order_order_no_SEQ.nextval, 'preparing', 16000, '굴국밥 외 1종', '양 많이', 'helprun@naver.com');

INSERT INTO order_detail (o_d_no, order_no, o_d_product_count, product_no) 
VALUES (order_detail_o_d_no_SEQ.nextval, gukbap_order_order_no_SEQ.currval, 1, 1);
INSERT INTO order_detail (o_d_no, order_no, o_d_product_count, product_no) 
VALUES (order_detail_o_d_no_SEQ.nextval, gukbap_order_order_no_SEQ.currval, 1, 4);

--카테고리 추가(국밥, 사이드, 음료 및 주류)
INSERT INTO product_category
VALUES (product_category_c_no_SEQ.nextval, '국밥');

INSERT INTO product_category
VALUES (product_category_c_no_SEQ.nextval, '사이드');

INSERT INTO product_category
VALUES (product_category_c_no_SEQ.nextval, '음료 및 주류');

INSERT INTO product_category
VALUES (product_category_c_no_SEQ.nextval, '테스트');

--위시리스트
INSERT INTO wishlist (wishlist_no, user_id, product_no) 
VALUES (wishlist_wishlist_no_SEQ.nextval, 'helprun@naver.com', 1);
INSERT INTO wishlist (wishlist_no, user_id, product_no) 
VALUES (wishlist_wishlist_no_SEQ.nextval, 'helprun@naver.com', 2);
INSERT INTO wishlist (wishlist_no, user_id, product_no) 
VALUES (wishlist_wishlist_no_SEQ.nextval, 'helprun@naver.com', 3);

INSERT INTO wishlist (wishlist_no, user_id, product_no) 
VALUES (wishlist_wishlist_no_SEQ.nextval, 'OMG_mim@naver.com', 4);
INSERT INTO wishlist (wishlist_no, user_id, product_no) 
VALUES (wishlist_wishlist_no_SEQ.nextval, 'OMG_mim@naver.com', 5);
INSERT INTO wishlist (wishlist_no, user_id, product_no) 
VALUES (wishlist_wishlist_no_SEQ.nextval, 'OMG_mim@naver.com', 6);
