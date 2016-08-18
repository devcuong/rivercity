package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.NewsCategoryBean;
import com.server.career.constant.SQLConstant;
import com.server.career.dao.NewsCategoryDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class NewsCategoryDaoImpl implements NewsCategoryDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String NEWS_CATEGORY_SEL_MOST_VIEW = "News_Category_Select_01.sql";
	private static final String NEWS_CATEGORY_COUNT_VIEW = "News_Category_Update_01.sql";
	
	@Override
	public List<NewsCategoryBean> getMostViewCategory() {
		List<NewsCategoryBean> newsBeans = null;

		try {
			// RowMapper
			final RowMapper<NewsCategoryBean> mapper = new BeanPropertyRowMapper<NewsCategoryBean>(NewsCategoryBean.class);

			newsBeans = namedParameterJdbcTemplate.query(SqlFileReaderUtil.getSql(NEWS_CATEGORY_SEL_MOST_VIEW), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newsBeans;
	}
	
	@Override
	public int updateCountViewCategory(Integer newsId, Integer countViews) {
		int categoryUpdate = 0;
		try {
			// Parameter sql
			final MapSqlParameterSource parameter = new MapSqlParameterSource();
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_ID, newsId);
			parameter.addValue(SQLConstant.SQL_PARAMETER_NEWS_VIEWS_COUNT, countViews);
			
			categoryUpdate = namedParameterJdbcTemplate.update(SqlFileReaderUtil.getSql(NEWS_CATEGORY_COUNT_VIEW), parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// Return
		return categoryUpdate;
	}

}
