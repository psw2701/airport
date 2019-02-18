package com.psw.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/join/")
public class JoinController {

	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);

	
	@RequestMapping(value = "joininfo", method = RequestMethod.GET)
	public String joinInfo() {
		logger.info("joinInfo ------ get");
		return"join/joinInfo";
	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String getJoin() {
		logger.info("join ------ get");
		return"join/joinForm";
	}
	
	/*@RequestMapping(value = "join", method = RequestMethod.POST)
	public String postJoin(String name, String password, Model model) {
		logger.info("join - post");
		logger.info("name = " + name);
		logger.info("password = " + password);

		model.addAttribute("name", name);
		model.addAttribute("password", password);

		return "joinResult";
	}*/
}
