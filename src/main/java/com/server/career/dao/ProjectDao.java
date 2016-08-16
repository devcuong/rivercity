package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.ProjectBean;

@Repository
public interface ProjectDao {
	public List<ProjectBean> getAllProject();
}
