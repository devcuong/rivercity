package com.server.career.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.server.career.bean.SellPostBean;
import com.server.career.service.SellPostService;

@Controller
public class RaoVatController {

	@Autowired
	private SellPostService sellPostService;
	
	@RequestMapping(value = {"/raovat"}, method = RequestMethod.GET)
	public String home(Map<String, Object> model, HttpServletRequest request) {
		List<SellPostBean> sellPostBeans = sellPostService.getTopSellPost();
		model.put("sellBean", sellPostBeans);
		return "raovat/home";
	}
}
