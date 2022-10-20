package com.itwill.service;

import java.util.ArrayList;
import java.util.List;

import com.itwill.dao.ProductDaoImpl;
import com.itwill.dto.Board;
import com.itwill.dto.Product;
import com.itwill.dto.ProductImage;
import com.itwill.util.BoardListPageDto;
import com.itwill.util.PageCalculator;
import com.itwill.util.PageInputDto;

public class ProductServiceImpl implements ProductService {
	private static ProductServiceImpl _instance;
	ProductDaoImpl pdi;
	
	private ProductServiceImpl() throws Exception {
		pdi = new ProductDaoImpl();
	}
	
	public static ProductServiceImpl getProductService() throws Exception {
		if(_instance==null) {
			_instance = new ProductServiceImpl();
		}
		return _instance;
	}

	@Override
	public ArrayList<Product> getProductList() throws Exception {
		return pdi.selectAll();
	}

	@Override
	public Product getProductDetail(int pNO) throws Exception {
		return pdi.selectKey(pNO);
	}

	@Override
	public int setProduct(Product prod) throws Exception {
		return pdi.create(prod);
	}
	
	@Override
	public int updateProduct(Product prod) throws Exception {
		return pdi.update(prod);
	}
	
	@Override
	public int deleteProduct(int pNo) throws Exception {
		return pdi.delete(pNo);
	}
	
	
	public int setImage(ProductImage pImage) throws Exception {
		return pdi.imgInsert(pImage);
	}
	
	public ArrayList<Product> getProdImageList() throws Exception {
		return pdi.selectAllIncImg();
	}
	
	public ArrayList<ProductImage> getImageList(int pNO) throws Exception {
		return pdi.getImgList(pNO);
	}
	
	public String getProductImageName(int pNo) throws Exception{
		ArrayList<ProductImage> pImgList = new ArrayList<ProductImage>();
		String retImage="";
		pImgList= pdi.getImgList(pNo);
		
		for (ProductImage pi: pImgList) {
			retImage = pi.getImgName();
		}
		
		return retImage;
	}
	
	/*
	 * 게시물리스트
	 */
	public BoardListPageDto findProductList(PageInputDto pageConfig) throws Exception{
		//1.전체글의 갯수
		int totalRecordCount = pdi.getProductCount(pageConfig.getQueryString());
		//ListResultBean 클래스-->결과데이타 DTO,VO(Board ArrayList + Paging)
		
		//2.paging계산(PageCounter 유틸클래스)
		BoardListPageDto boardListPageDto=PageCalculator.getPagingInfo(
								Integer.parseInt(pageConfig.getSelectPage()),
								pageConfig.getRowCountPerPage(),
								pageConfig.getPageCountPerPage(),
								totalRecordCount);
		//3.게시물데이타 얻기
		List<Product> prdtList=
				pdi.selectPagingRow(boardListPageDto.getStartRowNum(),
											boardListPageDto.getEndRowNum(), pageConfig.getOrderMethod()
											,pageConfig.getQueryString());
		
		boardListPageDto.setList(prdtList);
		
		return boardListPageDto;
	}
	
	
		
}
