package com.server.career.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.LoginBean;
import com.server.career.constant.SQLConstant;
import com.server.career.dao.UserDao;
import com.server.career.util.SqlFileReaderUtil;

/**
 * 
 * 
 * @author cuong
 *
 */
@Repository
public class UserDaoImpl implements UserDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String USER_SEL_01 = "User_Select_01.sql";

	@Override
	public Integer login(String username, String password) {
		LoginBean loginBean = null;
		try {
			// Parameter sql
			final MapSqlParameterSource parameter = new MapSqlParameterSource();
			parameter.addValue(SQLConstant.SQL_PARAMETER_USERNAME, username);
			parameter.addValue(SQLConstant.SQL_PARAMETER_PASSWORD, password);

			// RowMapper
			final RowMapper<LoginBean> mapper = new BeanPropertyRowMapper<LoginBean>(
					LoginBean.class);

			// Return
			loginBean = namedParameterJdbcTemplate.queryForObject(
					SqlFileReaderUtil.getSql(USER_SEL_01), parameter, mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (loginBean != null)
			return 1;
		return 0;
	}
}
