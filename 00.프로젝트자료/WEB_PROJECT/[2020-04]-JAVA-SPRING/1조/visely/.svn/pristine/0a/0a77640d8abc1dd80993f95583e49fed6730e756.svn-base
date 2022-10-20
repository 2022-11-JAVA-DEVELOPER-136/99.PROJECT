
DROP SEQUENCE ORD_ONO_SEQ;

CREATE SEQUENCE ORD_ONO_SEQ
INCREMENT BY 1
START WITH 1;





Insert into Ord(oNo, oCnt, oAmount, oCharge, oSts, cEMail, aNo)
Values(ORD_ONO_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?);
Update Ord
set oCnt =? , oAmount = ? , oCharge=? , oSts=?, cEmail=?, aNo =?
Where oNo = ?;

Delete From Ord Where oNo = ?;


--예제 실행코드
--oSts 1. 배송중 2.배송완료 3.취소됨
--oNo 기본키 & cEMail FK
--orderdetail에선 oNo가 FK

--insert
Insert into Ord(oNo, oCnt, oAmount, oCharge, oSts, cEMail, aNo)
VALUES(ORD_ONO_SEQ.nextval, 5, 50000, '신용카드', 1, NULL, null);


--update
UPDATE Ord
SET oCnt =6 , oAmount = 30000 , oCharge='카카오페이' , oSts=2, cEmail=null, aNo = null
WHERE oNo = 4;

--delete
DELETE FROM Ord WHERE oNo = 1;

--selectONE
SELECT * FROM Ord WHERE oNo = 1;

--selectALL
SELECT * FROM Ord;

Commit;




