------------------------------ UPDATE ------------------------------
-- MEMBER UPDATE
update MEMBER 
set MEMBER_ID = 'uni99',
    MEMBER_PASSWORD = '0000',
    MEMBER_NAME = '정솬',
    MEMBER_PHONE = '000-0000-0000',
    MEMBER_EMAIL = 'uni99@gmail.com'
where MEMBER_ID ='uni100';

 UPDATE MEMBER
 SET member_password='5555', member_name='정길산', member_phone='010-1111-9999', member_email='uni5@naver.com'
 WHERE member_id='uni5';

-- PRODUCT UPDATE
update PRODUCT 
set PRODUCT_NO='999999',
    PRODUCT_NAME='product_name수정',
    PRODUCT_DESC='product_desc수정',
    PRODUCT_PRICE='product_price수정',
    PRODUCT_L_DIV='product_l_div수정',
    PRODUCT_M_DIV='product_m_div수정',
    PRODUCT_S_DIV='product_s_div수정',
    PRODUCT_IMAGE_1='product_image_1수정',
    PRODUCT_IMAGE_2='product_image_2수정'
where PRODUCT_NO = '000000';

-- JUMUN UPDATE
update JUMUN set JUMUN_STATUS='Delivered'
		where MEMBER_ID='uni2' and JUMUN_NO=2;	

-- JUMUN_DETAIL UPDATE
update JUMUN_DETAIL 
set JUMUN_D_PRODUCT_NAME='BAPE',
    JUMUN_D_PRODUCT_SIZE='L',
    JUMUN_D_PRODUCT_COLOR='PURPLE',
    JUMUN_D_PRODUCT_PRICE='999999',
    JUMUN_D_PRODUCT_QTY='2'
where JUMUN_NO=999 AND PRODUCT_NO='999999';

-- CART UPDATE
-- uni3 카트에 있는 제품 수량증가
update CART set CART_QTY=CART_QTY + 1 
		where MEMBER_ID='uni3' and CART_NO=5;
        
-- QUESTION UPDATE
update question set question_content='무료이벤트으으으으' where question_no=14;

--ADDRESS UPDATE
 UPDATE ADDRESS
 SET address_zipcode='15672', address_name='남의집', address_country='대한민국', address_city='포천', address_address1='포천로 99', address_address2='대박빌딩 406호'
 WHERE member_id='uni1';
        







		