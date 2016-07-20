package com.server.career.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.server.career.bean.CrunchifyFileUpload;

@Controller
public class CrunchifyFileUploadController {
	@RequestMapping(value = "/quantri/upload", method = RequestMethod.GET)
	public String crunchifyDisplayForm() {
		return "admin/uploadfile";
	}

	@RequestMapping(value = "/quantri/savefiles", method = RequestMethod.POST)
	public String crunchifySave(
			@ModelAttribute("uploadForm") CrunchifyFileUpload uploadForm,
			Model map) throws IllegalStateException, IOException {
		String saveDirectory = "C:/Users/cuong/git/rivercity/src/main/webapp/resources/mytheme/images/";

		List<MultipartFile> crunchifyFiles = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();

		if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
			for (MultipartFile multipartFile : crunchifyFiles) {

				String fileName = multipartFile.getOriginalFilename();
				if (!"".equalsIgnoreCase(fileName)) {
					multipartFile
							.transferTo(new File(saveDirectory + fileName));
					fileNames.add(fileName);
				}
			}
		}

		map.addAttribute("files", fileNames);
		return "admin/uploadfilesuccess";
	}
	
	@RequestMapping(value = "/quantri/danhsachfile", method = RequestMethod.GET)
	public String fileFolder(Map<String, Object> model) throws IllegalStateException, IOException {
		String saveDirectory = "D:\\MyWorkSpace\\rivercity\\src\\main\\webapp\\resources\\mytheme\\home\\images";
		final File folder = new File(saveDirectory);
		List<String> lstFile = listFilesForFolder(folder);
		model.put("fileName", lstFile);
		return "admin/danhsachfile";
	}
	
	public List<String> listFilesForFolder(final File folder) {
		List<String> lstFile = new ArrayList<String>();
	    for (final File fileEntry : folder.listFiles()) {
	        if (fileEntry.isDirectory()) {
	            listFilesForFolder(fileEntry);
	        } else {
	        	lstFile.add(fileEntry.getName());
	        }
	    }
	    return lstFile;
	}
}
