package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.ProductBean;

/**
 * 
 * @author cuong
 *
 */
@Service
public interface ProductService {
	public List<ProductBean> getAllProduct();
}
