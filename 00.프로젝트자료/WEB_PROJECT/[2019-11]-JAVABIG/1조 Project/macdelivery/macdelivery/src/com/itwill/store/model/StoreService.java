package com.itwill.store.model;

import java.util.ArrayList;

import com.itwill.store.model.Store;
import com.itwill.store.model.StoreDao;

public class StoreService {
	private StoreDao storeDao;

	public StoreService() throws Exception {
		storeDao = new StoreDao();

	}
	/*
	 * READ ALL
	 */
	public ArrayList<Store> selectAll() throws Exception{
		return storeDao.selectAll();
	}
	/*
	 * READ ONE 
	 */
	public int selectByName(String name) throws Exception{
		return storeDao.selectSNOByName(name).getS_no();
	}
	/*
	 * CREATE
	 */
	public boolean insertStore(Store store) throws Exception{
		return storeDao.insertStore(store);
		
	}
}
