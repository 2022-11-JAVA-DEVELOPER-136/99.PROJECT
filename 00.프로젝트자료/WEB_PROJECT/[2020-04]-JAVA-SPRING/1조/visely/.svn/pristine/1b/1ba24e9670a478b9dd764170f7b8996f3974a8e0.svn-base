package com.itwill.service;

import com.itwill.dao.OrderDaoImpl;
import com.itwill.dto.OrderDTO;

import java.util.ArrayList;
import java.util.Map;

import com.itwill.dao.OrderDao;

public class OrderService {
	private static OrderService _getInstance=null;
	private OrderDao orderDao=null;
	private OrderService() throws Exception {
		orderDao = new OrderDaoImpl();
	}
	public static OrderService getInstance() throws Exception{
		if(_getInstance==null) {
			_getInstance = new OrderService();
		}
		return _getInstance;
	}
	
	public int InsertOrderService(OrderDTO order) {
		return orderDao.insertOrder(order);
	}
	public int updateOrderService(OrderDTO order) {
		return orderDao.updateOrder(order);
	}
	public int deleteOrderService(int oNo) {
		return orderDao.deleteOrder(oNo);
	}
	public OrderDTO findOrderService(int oNo) {
		return orderDao.findOrder(oNo);
	}
	public ArrayList<OrderDTO> findOrderAllService() {
		return orderDao.findOrderAll();
	}
	public ArrayList<Map> findOrderJoinAll(String loginId, int startIDX, int lastIDX) {
		return orderDao.findOrderJoinAll(loginId, startIDX, lastIDX);
	}
	public int RecentlyONO(String email) {
		return orderDao.recentlyONO(email);
	}
	public int getOrderCount(String loginId) {
		return orderDao.getOrderCount(loginId);
	}
	
}
