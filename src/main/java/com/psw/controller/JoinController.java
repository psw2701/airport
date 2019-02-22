package com.psw.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.psw.domain.CustomerVO;
import com.psw.service.CustomerService;

@Controller
@RequestMapping("/join/")
public class JoinController {

	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);

	@Autowired
	private CustomerService service;
	
	@RequestMapping(value = "joininfo", method = RequestMethod.GET)
	public String joinInfo() {
		logger.info("joininfo ------ get");
		return "join/joinInfo";
	}

	@RequestMapping(value = "authentication", method = RequestMethod.GET)
	public String authentication() {
		logger.info("authentication ------ get");
		return "join/authentication";
	}

	@RequestMapping(value = "acceptTerms", method = RequestMethod.GET)
	public String acceptTerms() {
		logger.info("acceptTerms ------ get");
		return "join/acceptTerms";
	}

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String getJoin() {
		logger.info("join ------ get");
		return "join/joinForm";
	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String postJoin(CustomerVO vo, Model model) {
		logger.info("join - post");
		logger.info(vo.toString());

		String code = service.nextCode();
		vo.setCode(code);
		
		service.insert(vo);

		logger.info("customer====================>" + vo);

		model.addAttribute("customerVO", vo);
		return "home";
	}
}
