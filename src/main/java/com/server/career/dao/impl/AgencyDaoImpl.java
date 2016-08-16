package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.AgentBean;
import com.server.career.dao.AgencyDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class AgencyDaoImpl implements AgencyDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String AGENCY_SEL_ALL = "Agency_Select_01.sql";
	private static final String REPRESENTATIVE_AGENCY_SEL_ALL = "Agency_Select_01.sql";

	@Override
	public List<AgentBean> getAllAgent() {
		List<AgentBean> agentBeans = null;

		try {
			// RowMapper
			final RowMapper<AgentBean> mapper = new BeanPropertyRowMapper<AgentBean>(AgentBean.class);

			// アプリ一覧情報（総件数）取得処理
			agentBeans = namedParameterJdbcTemplate.query(SqlFileReaderUtil.getSql(AGENCY_SEL_ALL), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return agentBeans;
	}

	@Override
	public List<AgentBean> getRepresentativeAgent() {
		List<AgentBean> agentBeans = null;

		try {
			// RowMapper
			final RowMapper<AgentBean> mapper = new BeanPropertyRowMapper<AgentBean>(AgentBean.class);

			// アプリ一覧情報（総件数）取得処理
			agentBeans = namedParameterJdbcTemplate.query(SqlFileReaderUtil.getSql(REPRESENTATIVE_AGENCY_SEL_ALL), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return agentBeans;
	}
}
