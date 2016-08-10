package com.server.career.bean;

public class NewsBean {
	private int newsId;
	private String newsTitle;
	private String newsShortTitle;
	private String newsDescription;
	private String newsImage;
	private String newsAlias;
	private String newsContent;

	public String getNewsShortTitle() {
		return newsShortTitle;
	}

	public void setNewsShortTitle(String newsShortTitle) {
		this.newsShortTitle = newsShortTitle;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsDescription() {
		return newsDescription;
	}

	public void setNewsDescription(String newsDescription) {
		this.newsDescription = newsDescription;
	}

	public String getNewsImage() {
		return newsImage;
	}

	public void setNewsImage(String newsImage) {
		this.newsImage = newsImage;
	}

	public String getNewsAlias() {
		return newsAlias;
	}

	public void setNewsAlias(String newsAlias) {
		this.newsAlias = newsAlias;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

}
