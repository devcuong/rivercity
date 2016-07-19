package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.InformationNormalBean;
import com.server.career.constant.SQLConstant;
import com.server.career.dao.InformationNormalDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class InformationNormalDaoImpl implements InformationNormalDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String INFORMATION_NORMAL_SEL_ALL = "Information_Normal_Select_01.sql";
	private static final String INFORMATION_NORMAL_SEL_MAX_DATA = "Information_Normal_Select_02.sql";
	private static final String INFORMATION_NORMAL_INS = "Information_Normal_Insert_01.sql";
	
	public List<InformationNormalBean> getAllInformationNormal() {
		List<InformationNormalBean> informationNormalBeans = null;

		try {
			// RowMapper
			final RowMapper<InformationNormalBean> mapper = new BeanPropertyRowMapper<InformationNormalBean>(
					InformationNormalBean.class);

			// アプリ一覧情報（総件数）取得処理
			informationNormalBeans = namedParameterJdbcTemplate.query(
					SqlFileReaderUtil.getSql(INFORMATION_NORMAL_SEL_ALL),
					mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return informationNormalBeans;
	}

	@Override
	public InformationNormalBean getNormalBeanMaxDataHash() {
		List<InformationNormalBean> informationNormalBeans = null;
		try {

			// RowMapper
			final RowMapper<InformationNormalBean> mapper = new BeanPropertyRowMapper<InformationNormalBean>(
					InformationNormalBean.class);

			// Return
			informationNormalBeans = namedParameterJdbcTemplate.query(
					SqlFileReaderUtil.getSql(INFORMATION_NORMAL_SEL_MAX_DATA),
					mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (informationNormalBeans != null)
			return informationNormalBeans.get(0);
		else
			return null;
	}
	
	@Override
	public int updateNormalBean(InformationNormalBean informationNormalBean) {
		int normal = 0;
		try {
			// Parameter sql
			final MapSqlParameterSource parameter = new MapSqlParameterSource();
			parameter.addValue(SQLConstant.SQL_PARAMETER_INFOR_IMAGE,
					informationNormalBean.getInforImage());
			parameter.addValue(SQLConstant.SQL_PARAMETER_INFOR_URL,
					informationNormalBean.getInforUrl());
			parameter.addValue(SQLConstant.SQL_PARAMETER_INFOR_DATA_NAME,
					informationNormalBean.getInforDataName());
			parameter.addValue(SQLConstant.SQL_PARAMETER_INFOR_DATA_HASH,
					informationNormalBean.getInforDataHash());
			parameter.addValue(SQLConstant.SQL_PARAMETER_INFOR_NAME,
					informationNormalBean.getInforDataName());
			parameter.addValue(SQLConstant.SQL_PARAMETER_INFOR_ALIAS,
					informationNormalBean.getInforDataName());
			parameter.addValue(SQLConstant.SQL_PARAMETER_INFOR_CONTENT,
					informationNormalBean.getInforDataName());
			// Return
			normal = namedParameterJdbcTemplate.update(
					SqlFileReaderUtil.getSql(INFORMATION_NORMAL_INS), parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return normal;
	}

}
