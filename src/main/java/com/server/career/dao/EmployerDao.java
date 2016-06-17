package com.server.career.dao;

import org.springframework.stereotype.Repository;

import com.server.career.bean.EmployerBean;

@Repository
public interface EmployerDao {

	// Check employer account for login
	public EmployerBean checkEmployerAccount(String email, String password);
	
	// Get employer info
	public EmployerBean getEmployerInfo(Integer employerId);
}
