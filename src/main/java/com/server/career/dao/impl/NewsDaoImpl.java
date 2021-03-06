package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

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
	private static final String NEWS_SEL_MOST_VIEW = "News_Select_3.sql";
	private static final String NEWS_INS = "News_Insert_01.sql";
	private static final String NEWS_UPDATE_COUNT_VIEWS = "News_Update_01.sql";
	private static final String NEWS_SEL_LASTEST = "News_Select_4.sql";

	public List<NewsBean> getAllNews() {
		List<NewsBean> newsBeans = null;

		try {
			// RowMapper
			final RowMapper<NewsBean> mapper = new BeanPropertyRowMapper<NewsBean>(NewsBean.class);

			// アプリ一覧情報（総件数）取得処理
			newsBeans = namedParameterJdbcTemplate.query(SqlFileReaderUtil.getSql(NEWS_SEL_ALL), mapper);
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
			final RowMapper<NewsBean> mapper = new BeanPropertyRowMapper<NewsBean>(NewsBean.class);

			// Return
			newsBean = namedParameterJdbcTemplate.queryForObject(SqlFileReaderUtil.getSql(NEWS_SEL_BY_ID), parameter,
					mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newsBean;
	}

	@Override
	public int addNews(NewsBean newsBean) {
		int newsAdd = 0;
		try {
			// Parameter sql
			final MapSqlParameterSource parameter = new MapSqlParameterSource();
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_TITLE, newsBean.getNewsTitle());
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_DESCRIPTION, newsBean.getNewsDescription());
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_IMAGE, newsBean.getNewsImage());
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_ALIAS, newsBean.getNewsAlias());
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_CONTENT, newsBean.getNewsImage());
			// Return
			newsAdd = namedParameterJdbcTemplate.update(SqlFileReaderUtil.getSql(NEWS_INS), parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newsAdd;
	}

	@Override
	public List<NewsBean> getMostViewNews() {
		List<NewsBean> newsBeans = null;

		try {
			// RowMapper
			final RowMapper<NewsBean> mapper = new BeanPropertyRowMapper<NewsBean>(NewsBean.class);

			// アプリ一覧情報（総件数）取得処理
			newsBeans = namedParameterJdbcTemplate.query(SqlFileReaderUtil.getSql(NEWS_SEL_MOST_VIEW), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newsBeans;
	}

	@Override
	public int updateCountViews(Integer newsId, Integer countViews) {
		int newsUpdate = 0;
		try {
			// Parameter sql
			final MapSqlParameterSource parameter = new MapSqlParameterSource();
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_ID, newsId);
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_VIEWS_COUNT, countViews);
			// Return
			newsUpdate = namedParameterJdbcTemplate.update(SqlFileReaderUtil.getSql(NEWS_UPDATE_COUNT_VIEWS),
					parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return newsUpdate;
	}
	
	@Override
	public List<NewsBean> getLastestNews() {
		List<NewsBean> newsBeans = null;

		try {
			// RowMapper
			final RowMapper<NewsBean> mapper = new BeanPropertyRowMapper<NewsBean>(NewsBean.class);

			// アプリ一覧情報（総件数）取得処理
			newsBeans = namedParameterJdbcTemplate.query(SqlFileReaderUtil.getSql(NEWS_SEL_LASTEST), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newsBeans;
	}

}
