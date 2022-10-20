package com.itwill.dao;

import java.util.ArrayList;
import java.util.Map;

import com.itwill.dto.OrderDetailDTO;

public interface OrderDetailDao {
	public int insertOrderDetail(OrderDetailDTO ordDetail);
	public int updateOrderDetail(OrderDetailDTO ordDetail);
	public int deleteOrderDetail(int odNo);
	public OrderDetailDTO findOrderDetail(int odNo);
	public ArrayList<OrderDetailDTO> findOrderDetailAll();
	public ArrayList<Map> selectionJoin(int oNo);
}
