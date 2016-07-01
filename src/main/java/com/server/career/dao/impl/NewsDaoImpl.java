package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.ArticleBean;
import com.server.career.bean.NewsBean;
import com.server.career.constant.SQLConstant;
import com.server.career.dao.NewsDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class NewsDaoImpl implements NewsDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String NEWS_SEL_ALL = "News_Select_01.sql";
	private static final String NEWS_SEL_BY_ID = "News_Select_02.sql";

	public List<NewsBean> getAllNews() {
		List<NewsBean> newsBeans = null;

		try {
			// RowMapper
			final RowMapper<NewsBean> mapper = new BeanPropertyRowMapper<NewsBean>(
					NewsBean.class);

			// アプリ一覧情報（総件数）取得処理
			newsBeans = namedParameterJdbcTemplate.query(
					SqlFileReaderUtil.getSql(NEWS_SEL_ALL), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newsBeans;
	}

	public NewsBean getNewsById(Integer newsId) {
		NewsBean newsBean = null;
		try {
			// Parameter sql
			final MapSqlParameterSource parameter = new MapSqlParameterSource();
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_ID, newsId);

			// RowMapper
			final RowMapper<NewsBean> mapper = new BeanPropertyRowMapper<NewsBean>(
					NewsBean.class);

			// Return
			newsBean = namedParameterJdbcTemplate.queryForObject(
					SqlFileReaderUtil.getSql(NEWS_SEL_BY_ID), parameter,
					mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newsBean;
	}

}
