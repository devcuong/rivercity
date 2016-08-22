package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.InformationSpecialBean;
import com.server.career.dao.InformationSpecialDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class InformationSpecialDaoImpl implements InformationSpecialDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String INFORMATION_SPECIAL_SEL_ALL = "Information_Special_Select_01.sql";

	public List<InformationSpecialBean> getAllInformationSpecial() {
		List<InformationSpecialBean> informationSpecialBeans = null;

		try {
			// RowMapper
			final RowMapper<InformationSpecialBean> mapper = new BeanPropertyRowMapper<InformationSpecialBean>(
					InformationSpecialBean.class);

			// アプリ一覧情報（総件数）取得処理
			informationSpecialBeans = namedParameterJdbcTemplate
					.query(SqlFileReaderUtil.getSql(INFORMATION_SPECIAL_SEL_ALL), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return informationSpecialBeans;
	}

}
