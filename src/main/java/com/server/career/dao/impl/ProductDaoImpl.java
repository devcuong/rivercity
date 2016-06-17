package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.ProductBean;
import com.server.career.dao.ProductDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class ProductDaoImpl implements ProductDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	/** SQL. */
	private static final String PRODUCT_SEL_01 = "Product_Select_01.sql";
	
	public List<ProductBean> getAllProduct() {
		
		List<ProductBean> productBeans = null;

		try {
			// RowMapper
			final RowMapper<ProductBean> mapper = new BeanPropertyRowMapper<ProductBean>(
					ProductBean.class);

			// Excute query
			productBeans = namedParameterJdbcTemplate.query(
					SqlFileReaderUtil.getSql(PRODUCT_SEL_01),
					mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return productBeans;
	}

}
