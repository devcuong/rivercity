package com.server.career.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.server.career.bean.ImageSlideBean;
import com.server.career.dao.ImageSlideDao;
import com.server.career.util.SqlFileReaderUtil;

@Repository
public class ImageSlideDaoImpl implements ImageSlideDao {

	/** JDBC. */
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	/** SQL. */
	private static final String IMAGE_SLIDE_SEL_ALL = "Image_Slide_Select_01.sql";
	
	public List<ImageSlideBean> getAllImageSlide() {
		List<ImageSlideBean> imageSlideBeans = null;

		try {
			// RowMapper
			final RowMapper<ImageSlideBean> mapper = new BeanPropertyRowMapper<ImageSlideBean>(
					ImageSlideBean.class);

			// アプリ一覧情報（総件数）取得処理
			imageSlideBeans = namedParameterJdbcTemplate.query(
					SqlFileReaderUtil.getSql(IMAGE_SLIDE_SEL_ALL),
					mapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return imageSlideBeans;
	}

}
