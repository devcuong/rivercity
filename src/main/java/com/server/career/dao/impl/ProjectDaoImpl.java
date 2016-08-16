package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.ProjectBean;
import com.server.career.dao.ProjectDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class ProjectDaoImpl implements ProjectDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	/** SQL. */
	private static final String PROJECT_SEL_ALL = "Project_Select_01.sql";
	
	@Override
	public List<ProjectBean> getAllProject() {
		List<ProjectBean> projectBeans = null;

		try {
			// RowMapper
			final RowMapper<ProjectBean> mapper = new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class);

			// アプリ一覧情報（総件数）取得処理
			projectBeans = namedParameterJdbcTemplate.query(SqlFileReaderUtil.getSql(PROJECT_SEL_ALL), mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return projectBeans;
	}

}
