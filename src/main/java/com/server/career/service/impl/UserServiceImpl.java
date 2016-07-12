package com.server.career.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.dao.UserDao;
import com.server.career.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	public Integer login(String username, String password) {
		return userDao.login(username, password);
	}
}
