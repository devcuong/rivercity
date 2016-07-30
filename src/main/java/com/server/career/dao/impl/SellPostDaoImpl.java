package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.SellPostBean;
import com.server.career.dao.SellPostDao;
import com.server.career.util.SqlFileReaderUtil;
@Repository
public class SellPostDaoImpl implements SellPostDao {
	
	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	/** SQL. */
	private static final String SELL_POST_SEL_TOP = "Sell_Post_Select_01.sql";
	
	@Override
	public List<SellPostBean> getTopSellPost() {
		List<SellPostBean> sellPosts = null;

		try {
			// RowMapper
			final RowMapper<SellPostBean> mapper = new BeanPropertyRowMapper<SellPostBean>(SellPostBean.class);

			// アプリ一覧情報（総件数）取得処理
			sellPosts = namedParameterJdbcTemplate.query(SqlFileReaderUtil.getSql(SELL_POST_SEL_TOP), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return sellPosts;
	}
}
