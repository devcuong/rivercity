package com.server.career.constant;

/**
 * SQLConstant
 * 
 * @author cuong
 *
 */
public class SQLConstant {

	/*
	 * Tham số cho truy vấn sql
	 */
	public static final String SQL_PARAMETER_INFORMATION_SPECIAL_ID = "informationSpecialId";
	public static final String SQL_PARAMETER_NEWS_ID = "newsId";
	public static final String SQL_PARAMETER_USERNAME = "username";
	public static final String SQL_PARAMETER_PASSWORD = "password";

	/**
	 * Tham số thêm slide trang chủ rivercity
	 */
	public static final String SQL_PARAMETER_INFOR_IMAGE = "inforImage";
	public static final String SQL_PARAMETER_INFOR_URL = "inforUrl";
	public static final String SQL_PARAMETER_INFOR_DATA_NAME = "inforDataName";
	public static final String SQL_PARAMETER_INFOR_DATA_HASH = "inforDataHash";
	public static final String SQL_PARAMETER_INFOR_NAME = "inforName";
	public static final String SQL_PARAMETER_INFOR_ALIAS = "inforAlias";
	public static final String SQL_PARAMETER_INFOR_CONTENT = "inforContent";

	/**
	 * Tham số cho câu sql thêm tin tức
	 */
	public static final String SQL_PARAMETER_NEWS_TITLE = "newsTitle";
	public static final String SQL_PARAMETER_NEWS_DESCRIPTION = "newsDescription";
	public static final String SQL_PARAMETER_NEWS_IMAGE = "newsImage";
	public static final String SQL_PARAMETER_NEWS_ALIAS = "newsAlias";
	public static final String SQL_PARAMETER_NEWS_CONTENT = "newsContent";

	/**
	 * Tham số cho câu sql cập nhật số lần xem tin tức
	 */
	public static final String SQL_PARAMETER_NEWS_VIEWS_COUNT = "newsViewCount";

	/**
	 * Tham số cho câu sql cập nhật số lần xem thể loại tin tức
	 */
	public static final String SQL_PARAMETER_CATEGORY_ID = "newsCategoryId";
	public static final String SQL_PARAMETER_CATEGORY_VIEWS_COUNT = "categoryViewCount";
}
