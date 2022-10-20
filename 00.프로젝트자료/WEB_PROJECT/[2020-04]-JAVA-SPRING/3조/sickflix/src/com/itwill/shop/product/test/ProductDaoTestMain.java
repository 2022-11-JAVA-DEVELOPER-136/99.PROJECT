package com.itwill.shop.product.test;

import javax.sql.DataSource;

import com.itwill.shop.product.ProductDao;
import com.itwill.shop.product.Product;

public class ProductDaoTestMain {
	
	public static void main(String[] args) throws Exception {
		ProductDao pservice = new ProductDao(JavaSeDataSource.getDataSource());
		
		System.out.println("<<<<<<<<<< Product >>>>>>>>>>");
		System.out.println("------ create ------");
		System.out.println(pservice.create(new Product(13, "타짜", 6000, "인생을 건 도박게임", "dafds.jpg", "142분", 8.8, 1)));
		
		System.out.println("------ update ------");
		System.out.println(pservice.update(new Product(13, "거북이 달린다",7000,"쫓고 쫓기는 추격전", "dafds.jpg", "142분",9.0,3)));
		
		System.out.println("------ remove ------");
		System.out.println(pservice.remove(11));
		
		System.out.println("------ findProduct ------");
		System.out.println(pservice.findProduct(1));
		
		System.out.println("------ findProductList ------");
		System.out.println(pservice.findProductList());
	}

}

