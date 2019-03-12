package com.psw.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.psw.domain.CustomerVO;
import com.psw.domain.LoginDTO;
import com.psw.domain.ManagerVO;
import com.psw.service.CustomerService;
import com.psw.service.ManagerService;

@Controller
@RequestMapping("/user/")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private CustomerService service;

	@Autowired
	private ManagerService mService;

	@RequestMapping(value = "loginPost", method = RequestMethod.POST)
	public void loginPost(String userid, String userpw, String checkManager, Model model) {
		logger.info("login POST--------------");
		CustomerVO vo = service.login(userid, userpw, checkManager);

		if (vo == null) {
			logger.info("loginPOST return...");
			return;
		}

		LoginDTO dto = new LoginDTO();

		dto.setId(vo.getId());
		dto.setName(vo.getName());
		dto.setPhone(vo.getPhone());
		dto.setEmail(vo.getEmail());
		dto.setCusCode(vo.getCode());
		dto.setPassword(vo.getPasswd());

		model.addAttribute("customerVO", dto);
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logOUTGET(HttpSession session) {
		logger.info("logout GET-----");
		session.invalidate();

		return "redirect:/";

	}

	@RequestMapping(value = "mLogin", method = RequestMethod.GET)
	public void mLoginGet() {
		logger.info("mLogin GET--------------");
	}

	@RequestMapping(value = "mLogin", method = RequestMethod.POST)
	public void mLoginPost(String id, String pw, String checkManager, Model model) {
		logger.info("mLoginPost POST--------------");
		ManagerVO vo = mService.login(id, pw, checkManager);
		logger.info("vo===========================>" + vo);
		if (vo == null) {
			logger.info("mLoginPost POST return");
			return;
		}

		LoginDTO dto = new LoginDTO();
		dto.setId(vo.getId());
		dto.setName(vo.getName());
		dto.setPhone(vo.getPhone());
		dto.setEmail(vo.getEmail());
		dto.setMngCode(vo.getCode());
		dto.setPassword(vo.getPasswd());
		model.addAttribute("managerVO", dto);
		logger.info("dto===============>" + dto);

	}
}
