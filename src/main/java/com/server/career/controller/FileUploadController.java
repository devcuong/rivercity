package com.server.career.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.server.career.bean.CrunchifyFileUpload;
import com.server.career.constant.WebConstant;

@Controller
public class FileUploadController {
	@RequestMapping(value = "/quantri/upload", method = RequestMethod.GET)
	public String crunchifyDisplayForm() {
		return "admin/uploadfile";
	}

	@RequestMapping(value = "/quantri/savefiles", method = RequestMethod.POST)
	public String crunchifySave(@ModelAttribute("uploadForm") CrunchifyFileUpload uploadForm, Model map)
			throws IllegalStateException, IOException {
		String saveDirectory = WebConstant.IMAGES_SERVER_PATH;

		List<MultipartFile> crunchifyFiles = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();

		if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
			for (MultipartFile multipartFile : crunchifyFiles) {

				String fileName = multipartFile.getOriginalFilename();
				if (!"".equalsIgnoreCase(fileName)) {
					multipartFile.transferTo(new File(saveDirectory + fileName));
					fileNames.add(fileName);
				}
			}
		}

		map.addAttribute("files", fileNames);
		return "admin/uploadfilesuccess";
	}

	@RequestMapping(value = "/quantri/danhsachfile", method = RequestMethod.GET)
	public String fileFolder(Map<String, Object> model, HttpServletRequest request)
			throws IllegalStateException, IOException {

		String delete = request.getParameter("delete");
		if (delete == null) {
			String saveDirectory = WebConstant.IMAGES_SERVER_PATH;
			final File folder = new File(saveDirectory);
			List<String> lstFile = listFilesForFolder(folder);
			model.put("fileName", lstFile);
			return "admin/danhsachfile";
		} else {
			byte[] deleteImageString = Base64.decodeBase64(delete.trim());
			String[] deleteImage = (new String(deleteImageString, "UTF-8")).split(":");
			String imageName = deleteImage[0];
			File fileDelete = new File(WebConstant.IMAGES_SERVER_PATH + imageName);
			if (fileDelete.delete()) {
				return "redirect:/quantri/danhsachfile";
			}
		}
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
