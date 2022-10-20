
-- 주문, 주문상세, 고객테이블의 모든 컬럼을 주문번호로 검색
SELECT *
FROM ORD JOIN ORDDETAIL ON ord.ono = orddetail.ono
    JOIN CUSTOMER ON customer.cemail=ord.cemail
WHERE ORD.ONO=1;


-- 주문, 주문상세, 고객테이블의 모든 컬럼을 회원이메일로 검색
SELECT *
FROM ORD JOIN ORDDETAIL ON ord.ono = orddetail.ono
    JOIN CUSTOMER ON customer.cemail=ord.cemail
WHERE customer.cemail='AAA';

-- 주문 , 주문상세 모든 컬럼을 주문번호로 검색
SELECT *
FROM ORD JOIN ORDDETAIL ON ord.ono = orddetail.ono
WHERE ORD.ONO=1;

-- 주문, 주문상세 테이블을 조인하여, 주문상세 고유번호로 -> 제품별 정보를 검색 
SELECT *
FROM ORD JOIN ORDDETAIL ON ord.ono = orddetail.ono
WHERE orddetail.odno=1;