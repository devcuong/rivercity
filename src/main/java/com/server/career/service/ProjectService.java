package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.ProjectBean;

@Service
public interface ProjectService {
	public List<ProjectBean> getAllProject();
}
