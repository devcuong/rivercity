package com.server.career.service;

import org.springframework.stereotype.Service;

/**
 * 
 * @author cuong
 *
 */
@Service
public interface UserService {

	public Integer login(String username, String password);
}
