package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.ProjectBean;
import com.server.career.dao.ProjectDao;
import com.server.career.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectDao projectDao;
	
	@Override
	public List<ProjectBean> getAllProject() {
		return projectDao.getAllProject();
	}
}
