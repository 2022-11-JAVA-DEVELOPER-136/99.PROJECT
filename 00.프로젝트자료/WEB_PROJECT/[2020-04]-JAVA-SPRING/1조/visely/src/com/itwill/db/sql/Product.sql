--select 
    select * from product;

--insert
insert into product (pNo, pName, pDesc, pPrice, pPoint, pStockQty, pUnit)
values (Product_pNO_SEQ.nextval, '면도기', '질레트면도기', 5000, 5, 500, '개');

insert into product (pNo, pName, pDesc, pPrice, pPoint, pStockQty, pUnit)
values (Product_pNO_SEQ.nextval, '면도기1', '빠레트면도기', 3000, 5, 300, '개');

insert into product (pNo, pName, pDesc, pPrice, pPoint, pStockQty, pUnit)
values (Product_pNO_SEQ.nextval, '면도거품', '버블버블', 2000, 5, 3000, '개');


-- update
update product
set pName = '면도으기', 
    pDesc = '여성전용 면도기', 
    pPrice = 80000, 
    pStockQty = 9999, 
    pUnit = '개'
where pNo = '1';

-- delete

delete from product
where pNo = '3'; 
