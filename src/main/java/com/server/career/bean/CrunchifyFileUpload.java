package com.server.career.bean;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class CrunchifyFileUpload {
	private List<MultipartFile> crunchifyFiles;

	public List<MultipartFile> getFiles() {
		return crunchifyFiles;
	}

	public void setFiles(List<MultipartFile> files) {
		this.crunchifyFiles = files;
	}
}
