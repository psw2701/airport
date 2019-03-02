package com.psw.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/boardInfo/*")
public class BoardInfoController {
	private static final Logger logger = LoggerFactory.getLogger(BoardInfoController.class);

	@RequestMapping(value = "homePass", method = RequestMethod.GET)
	public void homePass() {
		logger.info("homePass--------get");

	}

	@RequestMapping(value = "mobilePass", method = RequestMethod.GET)
	public void mobilePass() {
		logger.info("mobilePass--------get");

	}

	@RequestMapping(value = "security", method = RequestMethod.GET)
	public void security() {
		logger.info("security--------get");

	}

	@RequestMapping(value = "lithium", method = RequestMethod.GET)
	public void lithium() {
		logger.info("lithium--------get");

	}

	@RequestMapping(value = "cultural", method = RequestMethod.GET)
	public void cultural() {
		logger.info("cultural--------get");

	}

	@RequestMapping(value = "flightEtiquette", method = RequestMethod.GET)
	public void flightEtiquette() {
		logger.info("cultural--------get");

	}

	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public void notice() {
		logger.info("notice--------get");

	}
	
	


}
