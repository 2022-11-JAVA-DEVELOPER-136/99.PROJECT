package com.itwill.test;

import java.util.ArrayList;

import com.itwill.dto.OrderDTO;

public class OrderTestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		OrderTestDao otest;
		OrderDTO order=null;
		try {
			otest = new OrderTestDao(JavaSeDataSource.getDataSource());
			int i = otest.insertOrder(
					new OrderDTO(null,3,30000,"카카오페이",2,null,"9012@email.com",21));
			System.out.println("insert ="+ i);
			i = otest.updateOrder(new OrderDTO(4,4,50000,"신용카드",1,null,null,null));
			System.out.println("update ="+ i);
			i = otest.deleteOrder(20);
			System.out.println("delete ="+i);
			
			order = otest.findOrder(3);
			
			if(order!=null) {
				System.out.println("order 찾음");
			}else {
				System.out.println("살려줘");
			}
			
			ArrayList<OrderDTO> orderList = otest.findOrderAll();
			int a =0;
			for (OrderDTO orderDTO : orderList) {
				a++;
				System.out.println("리스트 수만큼 반복:"+a);
			}
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		

}
