public class JoinSQL {
	public static final String SELECT_ALLMEMBER_WITHCART =
			"select m.*, c.* from member m left outer join cart c on m.m_id = c.m_id";
	public static final String SELECT_ONEMEMBER_WITHCART =
			"select m.*, c.* from member m left outer join cart c on m.m_id = c.m_id "
			+ "where m.m_id =?";
	
	
	public static final String SELECT_ALLMEMBER_WITHBOARD = 
			"select m.*, b.* from member m left outer join board b on m.m_id = b.m_id";
	public static final String SELECT_ONEMEMBER_WITHBOARD = 
			"select m.*, b.* from member m left outer join board b on m.m_id = b.m_id"
			+ "where m.m_id = ?";
	
	
	
	public static final String SELECT_ALLMEMBER_WITHJUMUN = 
			"select m.*, j.* from member m left outer join jumun j on m.m_id = j.m_id";
	public static final String SELECT_ONEMEMBER_WITHJUMUN = 
			"select m.*, j.* from member m left outer join jumun j on m.m_id = j.m_id"
			+ "where m.m_id = ?";
	
	
	public static final String SELECT_ALLJUMUN_WITHJUMUNDETAIL = 
			"select j.*, jd.* from jumun j left outer join jumun_detail jd on j.j_no = jd.j_no";
	public static final String SELECT_ONEJUMUN_WITHJUMUNDETAIL = 
			"select j.*, jd.* from jumun j left outer join jumun_detail jd on j.j_no = jd.j_no"
			+ "where j.j_no =?";
	
	
	
	public static final String SELECT_ALLCART_WITHPRODUCT = 
			"select c.*, p.* from cart c inner join product p on c.p_no = p.p_no";
	public static final String SELECT_ONECART_WITHPRODUCT = 
			"select c.*, p.* from cart c inner join product p on c.p_no = p.p_no"
			+ "where p.p_no = ?";
	
			
	
	public static final String SELECT_ALLPRODUCT_WITHGENRE =
			"select p.*, g.* from product p inner join genre g on p.g_no = g.g_no";
	public static final String SELECT_ONEPRODUCT_WITHGENRE =
			"select p.*, g.* from product p left outer join genre g on p.g_no = g.g_no"
			+ "where g.g_no = ?";
	
	
	
	public static final String SELECT_ALLPRODUCT_WITHJUMUNDETAIL = 
			"select p.*, jd.* from product p right outer join jumun_detail jd on p.p_no = jd.p_no";
	public static final String SELECT_ONEPRODUCT_WITHJUMUNDETAIL = 
			"select p.*, jd.* from product p right outer join jumun_detail jd on p.p_no = jd.p_no"
			+ "where p.p_no = ?";

}
