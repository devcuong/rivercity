package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.SellPostBean;

@Repository
public interface SellPostDao {
	public List<SellPostBean> getTopSellPost();
}
