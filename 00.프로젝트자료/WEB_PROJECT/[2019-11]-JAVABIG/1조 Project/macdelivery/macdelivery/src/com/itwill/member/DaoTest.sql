insert into Member values(seq_member_no.nextval,'다윤','다윤','다윤','다윤','다윤','다윤');
update Member set m_pwd='1111',m_phone='1121',m_email='email' where m_no=1000;
insert into MemberAddressList values(1000,2000,'서울시','강남구','역삼동');
insert into MemberAddressList values(1000,seq_Address_no.nextval,'창원시','상남구','상남동');
select * from MemberAddressList;
update MemberAddressList set m_address_si='서울시',m_address_gu='구로구',m_address_detail='개봉동' where m_no=1000 and ma_no=1;

select * from Member;