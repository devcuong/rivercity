package com.server.career.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.server.career.bean.LoginBean;
import com.server.career.service.UserService;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = { "/quantri" }, method = RequestMethod.GET)
	public String home(@ModelAttribute("userBean") LoginBean loginBean,
			Map<String, Object> model, HttpServletRequest request) {
		return "admin/dangnhap";
	}

	@RequestMapping(value = { "/quantri/dangnhap" }, method = RequestMethod.POST)
	public String login(@ModelAttribute("userBean") LoginBean loginBean,
			Map<String, Object> model, HttpServletRequest request) {
		Integer isLogin = userService.login(loginBean.getUserName(),
				loginBean.getPassword());
		if (isLogin == 1) {
			request.getSession().setAttribute("login", loginBean);
			return "admin/trangchu";
		} else
			return "uploadfile";
	}
}