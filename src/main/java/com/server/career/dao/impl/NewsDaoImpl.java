package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.NewsBean;
import com.server.career.dao.NewsDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class NewsDaoImpl implements NewsDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String NEWS_SEL_ALL = "News_Select_01.sql";

	public List<NewsBean> getAllNews() {
		List<NewsBean> newsBeans = null;

		try {
			// RowMapper
			final RowMapper<NewsBean> mapper = new BeanPropertyRowMapper<NewsBean>(
					NewsBean.class);

			// アプリ一覧情報（総件数）取得処理
			newsBeans = namedParameterJdbcTemplate.query(
					SqlFileReaderUtil.getSql(NEWS_SEL_ALL),
					mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newsBeans;
	}

}
