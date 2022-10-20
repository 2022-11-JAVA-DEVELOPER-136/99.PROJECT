--create
insert into cart (cNo, cQty, cPrice, pNo, cEmail) values(1, 2, 5000, 10, 'itwill1@naver.com');

--update
update cart
set   cNo=1;
      cQty = 2;
      cPrice = 3;
      pNo = 4;
      cEmail = 'itwill@naver.com'
where cNo = 2;

--delete
delete from cart
where cNo =1;

--read all
select * from cart;

--read one
select * from cart where cNo = 1;
