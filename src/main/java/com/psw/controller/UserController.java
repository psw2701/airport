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
import com.psw.service.CustomerService;

@Controller
@RequestMapping("/user/")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private CustomerService service;

	@RequestMapping(value = "loginPost", method = RequestMethod.POST)
	public void loginPost(String id, String passwd, Model model) {
		logger.info("login POST--------------");
		CustomerVO vo = service.login(id, passwd);

		if (vo == null) {
			logger.info("loginPOST return...");
			return;

		}

		LoginDTO dto = new LoginDTO();

		dto.setId(vo.getId());
		dto.setName(vo.getName());

		model.addAttribute("customerVO", dto);
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logOUTGET(HttpSession session) {
		logger.info("logout GET-----");
		session.invalidate();

		return "redirect:${pageContext.request.contextPath }";

	}
}
