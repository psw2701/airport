package com.psw.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.psw.domain.LoginDTO;
import com.psw.domain.ReplyVO;

import com.psw.service.ReplyService;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);

	@Autowired
	private ReplyService service;

	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void registGet(ReplyVO vo, Model model, HttpServletRequest request) {
		logger.info("register ----- get");
		model.addAttribute("ReplyVO", vo);

		HttpSession session = request.getSession();
		LoginDTO dto = (LoginDTO) session.getAttribute("login");
		logger.info("register ----- dto" + dto);

	}
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody ReplyVO vo) {
		ResponseEntity<String> entity = null;
		logger.info("reply create----------------" + vo);

		try {
			service.create(vo);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);// 400error
		}
		return entity;
	}
	
	// @PathVariable : 주소에 있는 url변수를 내 매개변수에 대입시켜준다.
	@RequestMapping(value = "/all/{no}", method = RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> list(@PathVariable("no") int no) {
		ResponseEntity<List<ReplyVO>> entity = null;

		try {
			List<ReplyVO> list = service.list(no);
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	
	@RequestMapping(value = "{no}", method = RequestMethod.PUT)
	public ResponseEntity<String> update(@PathVariable("no") int no, @RequestBody ReplyVO vo) {
		ResponseEntity<String> entity = null;
		try {
			vo.setNo(no);
			service.update(vo);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "{no}", method = RequestMethod.DELETE)
	public ResponseEntity<String> remove(@PathVariable("no") int no) {
		ResponseEntity<String> entity = null;
		try {
			service.delete(no);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
