package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.ProductBean;

@Repository
public interface ProductDao {
	
	// Get all product 
	public List<ProductBean> getAllProduct();
	
}
