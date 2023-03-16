------------------------------ SELECT ------------------------------
/*
* Q@A 
*/
select * from question where member_id ='uni1';

/*
* MEMBER SELECT
*/
SELECT *
FROM MEMBER
WHERE member_id='uni1';

/*
 * 1. 멤버한사람의 카트아이템리스트
 * 2. 카트아이템 1개의 제품정보
 * 3. 멤버한사람의 카트정보출력(제품정보)
 */
 --1. 멤버한사람의 카트아이템리스트
select * from cart c where c.member_id='uni1';
select * from cart c where c.user_id='uni2';
select * from cart c where c.user_id='uni3';
--2. 카트아이템 1개의 제품정보
select * from cart c join product p on c.product_no=p.product_no where c.cart_item_no=1111; 
--3. 멤버한사람의 카트정보출력(제품정보)


/*
 * 1. 멤버 한사람의 특정날짜의 주문전체목록
 * 2. 멤버 한사람의 특정날짜의 주문한개
 * 3. 주문한개의  멤버의 정보
 * 4. 주문한개의  제품여러개 정보들(주문상세,제품)
 * 5. 주문한개의 주문자정보 & 제품여러개 정보들(주문상세)
 */

 --1. 멤버 한사람의 특정날짜의 주문전체목록
 select j.* from 
 member m join jumun j
 on m.member_id = j.member_id and m.member_id='uni1' and to_char(j.jumun_date,'YYYY/MM/DD')='2020/10/22' ;
--2. 멤버 한사람의 특정날짜의 주문한개 
 select j.* from 
 member m join jumun j
 on m.member_id = j.member_id and m.member_id='uni2' and to_char(j.jumun_date,'YYYY/MM/DD')='2020/10/22' 
 where j.jumun_no=2; 
-- 4. 주문한개의  제품여러개 정보들(주문상세,제품)
select jd.*,p.* from jumun j 
join jumun_detail jd 
on j.jumun_no=jd.jumun_no
join product p
on jd.product_no=p.product_no
<<<<<<< HEAD
where j.user_id='uni2' and j.jumun_no=3001;

--wishlist
/*
 * 1.멤버의 찜리스트
 */
select p.product_no,p.product_name,p.product_price, p.product_image_1
from wishlist w
join product p
on w.product_no = p.product_no
where w.member_id = 'uni2'; 


=======
where member_id='uni3' and j.jumun_no=3;
 
>>>>>>> refs/heads/suhwan93
/************************ 관리자***************************/
--1. 모든멤버의 특정날짜의 주문전체목록 
 select j.* from 
 member m join jumun j
 on m.member_id = j.member_id and to_char(j.jumun_date,'YYYY/MM/DD')='2020/10/22' ;
-- 3-1. 주문한건의  멤버의 정보
 select * from member m
 join jumun j
 on m.member_id=j.member_id where j.jumun_no=3;
-- 3-2. 특정멤버의 주문정보출력
 select * from member m
 inner join jumun j
 on m.member_id=j.member_id where m.member_id='uni1'; 
-- 3-2. 특정멤버의 정보를 주문정보를 포함해서출력
 select * from member m
 left outer join jumun j
 on m.member_id=j.member_id where u.member_id='uni3';
 
-- 5. 주문한개의 주문자정보 & 제품여러개 정보들(주문상세) 
select u.*,p.* from member m 
join jumun j on m.member_id=j.member_id
join jumun_detail jd on j.jumun_no=jd.jumun_no
join product p on jd.product_no=p.product_no
where j.jumun_no=1; 


/*************************PRODUCT*******************************/
select * from product;
--1. Product_no 로 select
select*
from product 
where product_no=415693;
--2. SELECT BY Product_L_DIV
select p.product_l_div,p.product_m_div,p.product_s_div,p.product_name,p.product_desc,p.product_no,p.product_price,p.product_image_1,p.product_image_2
from product p
where product_l_div='M';
--3. SELECT BY L_DIV & M_DIV
select p.product_l_div,p.product_m_div,p.product_s_div,p.product_name,p.product_desc,p.product_no,p.product_price,p.product_image_1,p.product_image_2
from product p
where product_l_div='F' and product_m_div='T';
--4. SELECT BY L_DIV & M_DIV & S_DIV 
select p.product_l_div,p.product_m_div,p.product_s_div,p.product_name,p.product_desc,p.product_no,p.product_price,p.product_image_1,p.product_image_2
from product p
where product_l_div='F' and product_m_div='T' and p.product_s_div='SH';
--5. SELECT BY PRODUCT_NAME
select*
from product 
where product_name='스웨트셔츠(긴팔)';

