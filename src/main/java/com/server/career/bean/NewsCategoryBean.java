package com.server.career.bean;

public class NewsCategoryBean {
	private int newsCategoryId;
	private String newsCategoryName;
	private int categoryCountView;

	public int getNewsCategoryId() {
		return newsCategoryId;
	}

	public void setNewsCategoryId(int newsCategoryId) {
		this.newsCategoryId = newsCategoryId;
	}

	public String getNewsCategoryName() {
		return newsCategoryName;
	}

	public void setNewsCategoryName(String newsCategoryName) {
		this.newsCategoryName = newsCategoryName;
	}

	public int getCategoryCountView() {
		return categoryCountView;
	}

	public void setCategoryCountView(int categoryCountView) {
		this.categoryCountView = categoryCountView;
	}

}
