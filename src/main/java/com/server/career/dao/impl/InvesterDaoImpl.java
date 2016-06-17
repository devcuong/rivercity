package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.InformationInvesterBean;
import com.server.career.constant.SQLConstant;
import com.server.career.dao.InvesterDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class InvesterDaoImpl implements InvesterDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String INVESTER_SEL_BY_ID = "Invester_Select_01.sql";
	
	public List<InformationInvesterBean> getInvesterByInformationSpecialId(
			Integer informationSpecialId) {
		List<InformationInvesterBean> informationInvesterBeans = null;

		try {
			// Parameter
			final MapSqlParameterSource parameter = new MapSqlParameterSource();
			parameter.addValue(SQLConstant.SQL_PARAMETER_INFORMATION_SPECIAL_ID,
					informationSpecialId);

			// RowMapper
			final RowMapper<InformationInvesterBean> mapper = new BeanPropertyRowMapper<InformationInvesterBean>(
					InformationInvesterBean.class);

			// JDBC
			informationInvesterBeans = namedParameterJdbcTemplate.query(
					SqlFileReaderUtil.getSql(INVESTER_SEL_BY_ID), parameter,
					mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return informationInvesterBeans;
	}

}
