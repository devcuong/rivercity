package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.InformationNormalBean;
import com.server.career.dao.InformationNormalDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class InformationNormalDaoImpl implements InformationNormalDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String INFORMATION_NORMAL_SEL_ALL = "Information_Normal_Select_01.sql";

	public List<InformationNormalBean> getAllInformationNormal() {
		List<InformationNormalBean> informationNormalBeans = null;

		try {
			// RowMapper
			final RowMapper<InformationNormalBean> mapper = new BeanPropertyRowMapper<InformationNormalBean>(
					InformationNormalBean.class);

			// アプリ一覧情報（総件数）取得処理
			informationNormalBeans = namedParameterJdbcTemplate.query(
					SqlFileReaderUtil.getSql(INFORMATION_NORMAL_SEL_ALL), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return informationNormalBeans;
	}

}
