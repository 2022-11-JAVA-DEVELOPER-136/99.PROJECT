package com.itwill.service;

import com.itwill.dao.OrderDetailDaoImpl;
import com.itwill.dao.ProductDaoImpl;
import com.itwill.dto.OrderDetailDTO;
import com.itwill.dto.Product;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import com.itwill.dao.OrderDetailDao;


public class OrderDetailService {
	private static OrderDetailService _getInstance =null;
	private OrderDetailDao orderDetail =null;
	private ProductDaoImpl pdi = null;
	private OrderDetailService() throws Exception {
		 orderDetail = new OrderDetailDaoImpl(); 
		 pdi = new ProductDaoImpl();
	}
	public static OrderDetailService getInstance() throws Exception{
		if(_getInstance==null) {
			_getInstance = new OrderDetailService();
		}
		
		return _getInstance;
	}
	
	public int insertOrderDetailService(OrderDetailDTO ordDetail) {
		return orderDetail.insertOrderDetail(ordDetail);
	}
	public int updateOrderDetailService(OrderDetailDTO ordDetail) {
		return orderDetail.updateOrderDetail(ordDetail);
	}
	public int deleteOrderDetailService(int odNo) {
		return orderDetail.deleteOrderDetail(odNo);
	}
	public OrderDetailDTO findOrderDetailService(int odNo) {
		return orderDetail.findOrderDetail(odNo);
	}
	public ArrayList<OrderDetailDTO> findOrderDetailAllService() {
		return orderDetail.findOrderDetailAll();
	}
	public ArrayList<Map> findOrderResult(int oNo) {
		return orderDetail.selectionJoin(oNo);
	}
	
	public void buyCountAdd(int pNo, int odQty) throws Exception {
		pdi.updateBuyCount(new Product(pNo, odQty));
	}
	
	
}
