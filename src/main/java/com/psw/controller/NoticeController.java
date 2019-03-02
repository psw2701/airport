package com.psw.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.psw.domain.CustomerVO;
import com.psw.domain.LoginDTO;
import com.psw.domain.NoticeVO;
import com.psw.domain.PageMaker;
import com.psw.domain.SearchCriteria;
import com.psw.service.NoticeService;
import com.psw.util.MediaUtils;
import com.psw.util.UploadFileUtils;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Autowired
	private NoticeService service;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public void list(SearchCriteria cri, Model model) {
		logger.info("list ----- get");
		System.out.println(cri);
		List<NoticeVO> list = service.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.searchTotalCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("cri", cri);
	}

	@RequestMapping(value = "read", method = RequestMethod.GET)
	public void read(@RequestParam("no") int no, SearchCriteria cri, Model model) {
		NoticeVO vo = service.read(no);
		service.addCnt(no);
		model.addAttribute("NoticeVO", vo);
		model.addAttribute("cri", cri);
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void registGet(NoticeVO vo, Model model, HttpServletRequest request) {
		logger.info("register ----- get");
		model.addAttribute("NoticeVO", vo);

		HttpSession session = request.getSession();
		LoginDTO dto = (LoginDTO) session.getAttribute("login");
		logger.info("register ----- dto" + dto);

	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String registerPost(NoticeVO vo, CustomerVO cusVO, List<MultipartFile> imageFiles, Model model)
			throws IOException {
		logger.info("register ----- Post");

		List<String> files = new ArrayList<>();
		for (MultipartFile file : imageFiles) {
			logger.info("file name : " + file.getOriginalFilename());
			logger.info("file size : " + file.getSize());

			String thumbPath = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());

			files.add(thumbPath);

		}
		vo.setFiles(files);

		logger.info("vo==================================>>>>" + vo);
		logger.info("cusVO=========>" + cusVO);
		service.regist(vo);

		model.addAttribute("result", "success");
		return "redirect:/notice/list";
	}

	@RequestMapping(value = "remove", method = RequestMethod.POST)
	@Transactional
	public String remove(@RequestParam("no") int no, Model model, SearchCriteria cri) {
		NoticeVO vo = service.read(no);
		List<String> files = vo.getFiles();
		for (String filename : files) {
			File file = new File(uploadPath + filename);
			file.delete();

			String front = filename.substring(0, 12);
			String end = filename.substring(14);
			String originaalName = front + end;
			File file2 = new File(uploadPath + originaalName);
			file2.delete();
		}
		service.remove(no);
		return "redirect:/notice/list?page=" + cri.getPage() + "&searchType=" + cri.getSearchType();
	}

	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public void modifyGet(@RequestParam("no") int no, SearchCriteria cri, Model model, NoticeVO vo) {
		logger.info("modify ----- Get");

		vo = service.read(no);

		model.addAttribute("NoticeVO", vo);
		model.addAttribute("cri", cri);

		logger.info("NoticeVO=========>" + vo);
	}

	@RequestMapping(value = "modify", method = RequestMethod.POST)
	public String modifyPost(NoticeVO vo, SearchCriteria cri, Model model, String[] delFiles, CustomerVO cusVO,
			String AirCode, List<MultipartFile> addFiles) throws IOException {
		logger.info("modify ----- Post");

		System.out.println("cri--------------->" + cri);

		if (delFiles != null) {
			for (String delFile : delFiles) {
				logger.info("---------------->" + delFile);

				File file = new File(uploadPath + delFile);
				file.delete();

				String front = delFile.substring(0, 12);
				String end = delFile.substring(14);
				String originaalName = front + end;
				File file2 = new File(uploadPath + originaalName);
				file2.delete();
			}
		}
		List<String> addImages = new ArrayList<>();
		if (addFiles != null) {
			for (MultipartFile file : addFiles) {
				logger.info("file name : " + file.getOriginalFilename());
				logger.info("file size : " + file.getSize());

				if (file.getSize() > 0) {
					String thumb = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());

					addImages.add(thumb);
				}

			}
		}

		service.modifyFile(vo, delFiles, addImages);
		model.addAttribute("page", cri.getPage());
		model.addAttribute("searchType", cri.getSearchType());
		model.addAttribute("keyword", cri.getKeyword());

		return "redirect:/notice/read?no=" + vo.getNo() + "&page=" + cri.getPage();
	}

	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String filename) {
		ResponseEntity<byte[]> entity = null;

		logger.info("displayFile : " + filename);

		try {
			String format = filename.substring(filename.lastIndexOf(".") + 1);
			MediaType mType = MediaUtils.getMediaType(format);

			HttpHeaders headers = new HttpHeaders();
			InputStream in = null;
			// c:/zzz/upload/asdfasdfa_main.jpg
			in = new FileInputStream(uploadPath + "/" + filename);
			headers.setContentType(mType);

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);

			in.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

}
