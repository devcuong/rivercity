package com.server.career.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RaoVatController {

	@RequestMapping(value = {"/raovat"}, method = RequestMethod.GET)
	public String home(Map<String, Object> model, HttpServletRequest request) {
		return "raovat/home";
	}
}
