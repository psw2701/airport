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


import com.psw.domain.AirportVO;
import com.psw.domain.BoardVO;
import com.psw.domain.CustomerVO;
import com.psw.domain.LoginDTO;
import com.psw.domain.ManagerVO;
import com.psw.domain.PageMaker;
import com.psw.domain.ReplyVO;
import com.psw.domain.SearchCriteria;
import com.psw.service.BoardService;
import com.psw.service.ReplyService;
import com.psw.util.MediaUtils;
import com.psw.util.UploadFileUtils;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	private static final String LOGIN = "login";

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Autowired
	private BoardService service;
	
	@Autowired
	private ReplyService ReplyService;

	/*
	 * @Autowired private CustomerService cusService;
	 */

	@RequestMapping(value = "info", method = RequestMethod.GET)
	public void info() {
		logger.info("info----------get");

	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public void list(SearchCriteria cri, Model model, HttpSession session/*, @RequestParam("no") int no*/ ) {
		logger.info("list ----- get");
		System.out.println(cri);

		LoginDTO mdto = (LoginDTO) session.getAttribute(LOGIN);

		cri.setOpenAll(true);

		if (mdto != null && mdto.getMngCode() != null) {
			cri.setOpenAll(false);
		}
		logger.info("==================================>>>>>>>>>>>>>>>" + mdto);
		logger.info("==================================>>>>>>>>>>>>>>>" + cri);

		List<BoardVO> list = service.listSearch(cri);
		
		
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.searchTotalCount(cri));

		model.addAttribute("list", list);
	
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("cri", cri);
		
	
	}

	@RequestMapping(value = "read", method = RequestMethod.GET)
	public void read(@RequestParam("no") int no, SearchCriteria cri, Model model) {
		BoardVO vo = service.read(no);
		service.addCnt(no);
		model.addAttribute("boardVO", vo);
		vo.setNo(no);

		ReplyVO rVO = new ReplyVO();
		rVO  = ReplyService.selectByRno(no);
		
		
		logger.info("no : "+no);
		
		
		model.addAttribute("replyVO", rVO);
		model.addAttribute("cri", cri);
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void registGet(BoardVO vo, Model model, HttpServletRequest request) {
		logger.info("register ----- get");
		model.addAttribute("boardVO", vo);

		HttpSession session = request.getSession();
		LoginDTO dto = (LoginDTO) session.getAttribute("login");
		logger.info("register ----- dto" + dto);

	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String registerPost(BoardVO vo, CustomerVO cusVO, String AirCode, List<MultipartFile> imageFiles,
			Model model) throws IOException {
		logger.info("register ----- Post");

		vo.setCusCode(cusVO);
		AirportVO airVO = new AirportVO();
		airVO.setCode(AirCode);
		vo.setAirportCode(airVO);

		List<String> files = new ArrayList<>();
		for (MultipartFile file : imageFiles) {
			if (file.getSize() != 0) {
				logger.info("file name : " + file.getOriginalFilename());
				logger.info("file size : " + file.getSize());

				String thumbPath = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());

				files.add(thumbPath);
			}

		}
		vo.setFiles(files);

		logger.info("vo==================================>>>>" + vo);
		logger.info("cusVO=========>" + cusVO);
		service.regist(vo);

		model.addAttribute("result", "success");
		return "redirect:/board/list";
	}

	@RequestMapping(value = "remove", method = RequestMethod.POST)
	@Transactional
	public String remove(@RequestParam("no") int no, Model model, SearchCriteria cri) {
		BoardVO vo = service.read(no);
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
		
		return "redirect:/board/list?page=" + cri.getPage() + "&searchType=" + cri.getSearchType();
	}

	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public void modifyGet(@RequestParam("no") int no, SearchCriteria cri, Model model, BoardVO vo) {
		logger.info("modify ----- Get");

		AirportVO airVO = new AirportVO();
		vo.setAirportCode(airVO);
		vo = service.read(no);

		model.addAttribute("boardVO", vo);
		model.addAttribute("cri", cri);

		logger.info("boardVO=========>" + vo);
	}

	@RequestMapping(value = "modify", method = RequestMethod.POST)
	public String modifyPost(BoardVO vo, SearchCriteria cri, Model model, String[] delFiles, CustomerVO cusVO,
			String AirCode, List<MultipartFile> addFiles) throws IOException {
		logger.info("modify ----- Post");

		vo.setCusCode(cusVO);
		AirportVO airVO = new AirportVO();
		airVO.setCode(AirCode);

		vo.setAirportCode(airVO);

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

		return "redirect:/board/read?no=" + vo.getNo() + "&page=" + cri.getPage();
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

	@RequestMapping(value = "myBoard", method = RequestMethod.GET)
	public void myBoard(SearchCriteria cri, Model model, HttpSession session) {
		logger.info("myBoard ----- get");
		System.out.println(cri);

		LoginDTO dto = (LoginDTO) session.getAttribute(LOGIN);

		List<BoardVO> list = service.listSearchMyBoard(cri, dto.getCusCode());

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.searchTotalCountMy(cri, dto.getCusCode()));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("cri", cri);
	}

	@RequestMapping(value = "reply", method = RequestMethod.GET)
	public void replyGet(ReplyVO rVO, Model model, HttpServletRequest request, @RequestParam("no") int no,
			SearchCriteria cri) {
		logger.info("replyGet ----- get");
		BoardVO bVO = service.read(no);
		service.addCnt(no);
		model.addAttribute("boardVO", bVO);
		model.addAttribute("cri", cri);
		model.addAttribute("replyVO", rVO);

		HttpSession session = request.getSession();
		LoginDTO dto = (LoginDTO) session.getAttribute("login");
		logger.info("register ----- dto" + dto);

	}

	@RequestMapping(value = "reply", method = RequestMethod.POST)
	public String replyPost(ReplyVO rVO,  ManagerVO mVO, int boardNo, Model model) {
		logger.info("replyPost ----- post");

		BoardVO bVO = new BoardVO();
		bVO.setNo(boardNo);
		rVO.setbNo(bVO);
		rVO.setManagerCode(mVO);
	
		logger.info("managerCode:"+mVO);
		logger.info("boardNo:"+boardNo);
		
		ReplyService.create(rVO);
		return "redirect:/board/list";
	}
	
	@RequestMapping(value = "duplicatedId", method = RequestMethod.GET)
	public ResponseEntity<Object> duplicatedId(){
	
		ResponseEntity<Object> entity = new ResponseEntity<>(HttpStatus.OK);
		return entity;
		
	}
	

}
