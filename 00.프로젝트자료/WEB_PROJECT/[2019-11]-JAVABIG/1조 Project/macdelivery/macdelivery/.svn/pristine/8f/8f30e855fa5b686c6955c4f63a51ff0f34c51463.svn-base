package com.itwill.product.model;

import java.util.ArrayList;

import com.itwill.member.model.Member;

public class ProductService {
	private ProductDao productDao;

	public ProductService() throws Exception {
		productDao = new ProductDao();
	}

	// create
	public boolean create(Product product) throws Exception {
		int rs = productDao.create(product);
		boolean isSuccess = false;
		if (rs == 1) {
			isSuccess = true;
		}
		return isSuccess;

	}

	// read all
	public ArrayList<Product> findAll() throws Exception {
		return productDao.getProductList();
	}

	// read one
	public Product findOne(int p_no) throws Exception {
		return productDao.getProductByNo(p_no);
	}

	// read menu list
	public ArrayList<Product> findByUpno(int p_up_no) throws Exception {
		return productDao.getProductListByNo(p_up_no);
	}

	// update
	public boolean update(Product product) throws Exception {
		int rs = productDao.update(product);
		boolean isSuccess = false;
		if (rs == 1) {
			isSuccess = true;
		}
		return isSuccess;

	}

	// delete
	public boolean deleteByNo(int p_no) throws Exception {
		int rs = productDao.delete(p_no);
		boolean isSuccess = false;
		if (rs == 1) {
			isSuccess = true;
		}
		return isSuccess;

	}
	//제품코드로 세트메뉴 반환
	public ArrayList<Product> findSet(int p_no) throws Exception {
		ArrayList<Product> setList = new ArrayList();

			ArrayList<Product> setProducts = productDao.getProductListByNo(p_no);
			Product sideProduct = findOne(1033);
			Product drinkProduct = findOne(1045);
			
			for (int i = 0; i < setProducts.size(); i++) {
				Product setProduct = (Product)setProducts.get(i);
				int setP_no = setProduct.getP_no();
				if(setP_no/1000 == 3) {
					setList.add(setProduct); //ArrayList에 해당 세트메뉴 담기
					setList.add(sideProduct);//arrayList에 후렌치후라이 담기
					setList.add(drinkProduct); //ArrayList에 코카콜라 담기
				}
			}

		return setList;

	}
	//제품코드로 라지세트메뉴 반환
	public ArrayList<Product> findLargeSet(int p_no) throws Exception {
		ArrayList<Product> largeSetList = new ArrayList();

			ArrayList<Product> setProducts = productDao.getProductListByNo(p_no);
			Product sideProduct = findOne(2002);
			Product drinkProduct = findOne(2015);
			
			for (int i = 0; i < setProducts.size(); i++) {
				Product setProduct = (Product)setProducts.get(i);
				int setP_no = setProduct.getP_no();
				if(setP_no/1000 == 4) {
					largeSetList.add(setProduct);//ArrayList에 해당 세트메뉴 담기
					largeSetList.add(sideProduct);//arrayList에 후렌치후라이L 담기
					largeSetList.add(drinkProduct);//ArrayList에 코카콜라L 담기
				}
			}

		return largeSetList;

	}
	

}
