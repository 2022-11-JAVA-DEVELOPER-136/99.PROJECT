package com.itwill.test;

import java.util.ArrayList;

import com.itwill.dto.Product;
import com.itwill.service.ProductServiceImpl;

public class ProductServiceTestMain {

	public static void main(String[] args) {
		
		double dv = 4.3;
		
		int iv =0;
		iv = (int) (dv / 1);
		
		System.out.println(iv);
		
		/*try {
			ArrayList<Product> prodList = ProductServiceImpl.getProductService().getProductList();
			for (Product product : prodList) {
				System.out.println(product.toString());
			}
		} catch (Exception e) {
			System.out.println("null");
			e.printStackTrace();
		}*/
		
	}

}
