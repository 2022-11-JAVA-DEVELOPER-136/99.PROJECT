package com.itwill.jumun_detail.model;

public class JumunDetailSQL {
	public final static String selectAll =
			"select j.j_no, s.s_name, j.j_address,p.p_name, j.j_price, j.j_demand\r\n" + 
			"from jumun_detail jd\r\n" + 
			"join jumun j on jd.j_no=j.j_no \r\n" + 
			"join product p on jd.p_no=p.p_no\r\n" + 
			"join store s on j.s_no=s.s_no\r\n" + 
			"where jd.j_no=?";
	public final static String insertJumunDetail = 
			"insert into jumun_detail values (?,to_number(concat(replace(to_char(sysdate,'MM/DD'),'/',''),to_char(lpad(seq_jumun_no.currval,4,0)))),?)";
	public final static String deleteJumunDetail = "delete from jumun_detail where j_no=?";
}
