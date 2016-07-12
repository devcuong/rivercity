package com.server.career.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
	public Integer login(String username, String password);
}