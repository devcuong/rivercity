package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.ProductBean;
import com.server.career.dao.ProductDao;
import com.server.career.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	public List<ProductBean> getAllProduct() {
		List<ProductBean> productBeans = productDao.getAllProduct();
		return productBeans;
	}

}
