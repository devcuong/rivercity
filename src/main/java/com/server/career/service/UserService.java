package com.server.career.service;

import org.springframework.stereotype.Service;

/**
 * 
 * @author cuong
 *
 */
@Service
public interface UserService {

	public String login(String username, String password);
}
