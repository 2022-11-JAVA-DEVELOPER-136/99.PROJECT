
-------------------------------- insert문 ------------------------------------
-- 원글생성
insert into board (bno, btitle, bcontent, bdate, cemail, viewcnt, groupno, step) 
values(BOARD_BNO_SEQ.nextval, 'Q: 시험용이지롱~', '텍스트으으으으으내요오오옹', sysdate, null, 0, BOARD_BNO_SEQ.currval, 1);

-- 답글생성


-------------------------------- update문 ------------------------------------
-- 게시판 수정을 위한 내용
update board 
set btitle = 'test',
    bcontent = '업데이트해에에에엣다아'
where bno = 1;

-- 조회수 증가를 위한 내용
update board 
set viewcnt = 2
where bno = 1;


-------------------------------- delete문 ------------------------------------
delete from board where bno = 1;



------------------------------- select문 ---------------------------------

-- 조회 시, 하나의 게시물 내용 꺼내오기
select bno, btitle, cemail, bdate, viewcnt  from board where bno = 1;

-- 전체조회
select bno, btitle, cemail, bdate, viewcnt  from board order by groupno desc, step asc, bdate asc;




