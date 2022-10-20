package com.itwill.test;

import java.util.ArrayList;

import com.itwill.dao.ProductDao;
import com.itwill.dto.Product;
import com.itwill.dao.ProductDaoImpl;

public class ProductDaoTestMain {

	public static void main(String[] args) throws Exception {
		
		ProductDao pd = new ProductDaoImpl();
//		/int pNO, String pName, String pDesc, int pPrice, double pPoint, int pStockQty, String pUnit
		int insertCnt = 0;
		insertCnt += pd.create(new Product(-999, "스킨로션", "남성을 위한 스킨로션", 8000, 5.0, 10, "개"));
		insertCnt += pd.create(new Product(-999, "스킨로션1", "남성을 위한 스킨로션1", 10000, 5.0, 10, "개"));
		insertCnt += pd.create(new Product(-999, "스킨로션2", "남성을 위한 스킨로션2", 15000, 5.0, 10, "개"));
		System.out.println(insertCnt);
		
		int updateCnt = 0;
		updateCnt += pd.update(new Product(1, "업데이트로션", "남성을 위한 스킨로션", 8000, 5.0, 3, "개"));
		updateCnt += pd.update(new Product(2, "업로션1", "여성을 위한 스킨로션1", 2000, 5.0, 5, "개"));
		System.out.println(updateCnt);
		
		Product product = pd.selectKey(1);
		System.out.println(product.toString());
		
		int deleteCnt = 0;
		deleteCnt += pd.delete(1);
		System.out.println(deleteCnt);
		
		ArrayList<Product> prdtList = pd.selectAll();
		for (Product prod : prdtList) {
			System.out.println(prod.toString());
		}
		
		
		
	}

}
