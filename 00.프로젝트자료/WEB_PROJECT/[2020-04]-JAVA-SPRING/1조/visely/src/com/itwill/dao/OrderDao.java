package com.itwill.dao;

import java.util.ArrayList;
import java.util.Map;

import com.itwill.dto.OrderDTO;

public interface OrderDao {
	public int insertOrder(OrderDTO order); 
	public int updateOrder(OrderDTO order);
	public int deleteOrder(int oNo);
	public OrderDTO findOrder(int oNo);
	public ArrayList<OrderDTO> findOrderAll();
	public ArrayList<Map> findOrderJoinAll(String loginId, int startIDX, int lastIDX); 
	public int recentlyONO(String email);
	public int getOrderCount(String loginId);
	
}
