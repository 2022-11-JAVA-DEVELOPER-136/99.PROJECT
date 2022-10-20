------------------------------ DELETE ------------------------------
--member 삭제
 DELETE FROM MEMBER
 WHERE member_id='uni5';
 
--product아이템 1개삭제
delete from product where product_no = 1;

--카트아이템 1개삭제
delete from cart where cart_no = 1;

--멤버 한 사람의 카트아이템 모두삭제
delete cart c where c.member_id='uni1';
delete cart c where c.member_id='uni2';
delete cart c where c.member_id='uni3';

--카트아이템 1개의 제품정보삭제
delete cart c where c.cart_no=1;

-- 주문한개의 내역삭제
delete from jumun_detail where jumun_d_no=1;
delete from jumun where jumun_no=1;

--QUESTION DELETE
delete question where question_no=14;

--ADDRESS DELETE
 DELETE FROM ADDRESS
 WHERE member_id='uni1';

--WISHLIST DELETE
delete wishlist where product_no='424420' and member_id='uni4';