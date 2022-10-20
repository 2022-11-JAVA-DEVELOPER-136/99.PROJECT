DROP TABLE jumun_detail CASCADE CONSTRAINTS;
DROP TABLE jumun CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE member_detail CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;

/**********************************/
/* Table Name: 회원 */
/**********************************/
CREATE TABLE member(
		m_no                          		NUMBER(10)		 NULL ,
		m_name                        		VARCHAR2(100)		 NOT NULL,
		m_address                     		VARCHAR2(255)		 NOT NULL,
		m_married                     		CHAR(1)		 DEFAULT 'F'		 NULL 
);

DROP SEQUENCE member_m_no_SEQ;
CREATE SEQUENCE member_m_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;
COMMENT ON TABLE member is '회원';
COMMENT ON COLUMN member.m_no is '회원번호';
COMMENT ON COLUMN member.m_name is '회원이름';
COMMENT ON COLUMN member.m_address is '회원주소';
COMMENT ON COLUMN member.m_married is '회원결혼여부';


/**********************************/
/* Table Name: 제품 */
/**********************************/
CREATE TABLE product(
		p_no                          		NUMBER(10)		 NULL ,
		p_name                        		VARCHAR2(255)		 NOT NULL,
		p_price                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		p_desc                        		VARCHAR2(255)		 NULL 
);

COMMENT ON TABLE product is '제품';
COMMENT ON COLUMN product.p_no is '제품번호';
COMMENT ON COLUMN product.p_name is '제품이름';
COMMENT ON COLUMN product.p_price is '제품가격';
COMMENT ON COLUMN product.p_desc is '제품설명';


/**********************************/
/* Table Name: 회원상세 */
/**********************************/
CREATE TABLE member_detail(
		m_no                          		NUMBER(10)		 NULL ,
		md_carno                      		VARCHAR2(100)		 NULL ,
		md_childno                    		NUMBER(10)		 DEFAULT 0		 NULL 
);

COMMENT ON TABLE member_detail is '회원상세';
COMMENT ON COLUMN member_detail.m_no is '회원번호';
COMMENT ON COLUMN member_detail.md_carno is '회원차량번호';
COMMENT ON COLUMN member_detail.md_childno is '회원자녀수';


/**********************************/
/* Table Name: 카트 */
/**********************************/
CREATE TABLE cart(
		cart_item_no                  		NUMBER(10)		 NULL ,
		cart_item_qty                 		NUMBER(10)		 DEFAULT 1		 NULL ,
		cart_item_tot_price           		NUMBER(10)		 NULL ,
		m_no                          		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

COMMENT ON TABLE cart is '카트';
COMMENT ON COLUMN cart.cart_item_no is '카트아이템번호';
COMMENT ON COLUMN cart.cart_item_qty is '카트아이템수량';
COMMENT ON COLUMN cart.cart_item_tot_price is '카트아이템총액';
COMMENT ON COLUMN cart.m_no is '회원번호';
COMMENT ON COLUMN cart.p_no is '제품번호';


/**********************************/
/* Table Name: 주문 */
/**********************************/
CREATE TABLE jumun(
		j_no                          		NUMBER(10)		 NULL ,
		j_desc                        		VARCHAR2(255)		 NOT NULL,
		j_date                        		DATE		 DEFAULT sysdate		 NULL ,
		j_price                       		NUMBER(10)		 DEFAULT 0		 NOT NULL,
		m_no                          		NUMBER(10)		 NULL 
);

COMMENT ON TABLE jumun is '주문';
COMMENT ON COLUMN jumun.j_no is '주문번호';
COMMENT ON COLUMN jumun.j_desc is '주문이름';
COMMENT ON COLUMN jumun.j_date is '주문날짜';
COMMENT ON COLUMN jumun.j_price is '주문가격';
COMMENT ON COLUMN jumun.m_no is '회원번호';


/**********************************/
/* Table Name: 주문상세 */
/**********************************/
CREATE TABLE jumun_detail(
		jd_no                         		NUMBER(10)		 NULL ,
		jd_qty                        		NUMBER(10)		 NULL ,
		j_no                          		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

COMMENT ON TABLE jumun_detail is '주문상세';
COMMENT ON COLUMN jumun_detail.jd_no is '주문상세번호';
COMMENT ON COLUMN jumun_detail.jd_qty is '주문제품별수량';
COMMENT ON COLUMN jumun_detail.j_no is '주문번호';
COMMENT ON COLUMN jumun_detail.p_no is '제품번호';



ALTER TABLE member ADD CONSTRAINT IDX_member_PK PRIMARY KEY (m_no);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (p_no);

ALTER TABLE member_detail ADD CONSTRAINT IDX_member_detail_PK PRIMARY KEY (m_no);
ALTER TABLE member_detail ADD CONSTRAINT IDX_member_detail_FK0 FOREIGN KEY (m_no) REFERENCES member (m_no);

ALTER TABLE cart ADD CONSTRAINT IDX_cart_PK PRIMARY KEY (cart_item_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK0 FOREIGN KEY (m_no) REFERENCES member (m_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no);

ALTER TABLE jumun ADD CONSTRAINT IDX_jumun_PK PRIMARY KEY (j_no);
ALTER TABLE jumun ADD CONSTRAINT IDX_jumun_FK0 FOREIGN KEY (m_no) REFERENCES member (m_no);

ALTER TABLE jumun_detail ADD CONSTRAINT IDX_jumun_detail_PK PRIMARY KEY (jd_no);
ALTER TABLE jumun_detail ADD CONSTRAINT IDX_jumun_detail_FK0 FOREIGN KEY (j_no) REFERENCES jumun (j_no);
ALTER TABLE jumun_detail ADD CONSTRAINT IDX_jumun_detail_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no);

