package com.psw.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/traffic/*")
public class TrafficController {
	private static final Logger logger = LoggerFactory.getLogger(TrafficController.class);

	@RequestMapping(value = "come", method = RequestMethod.GET)
	public void come() {
		logger.info("come--------get");

	}

	@RequestMapping(value = "park", method = RequestMethod.GET)
	public void park() {
		logger.info("park--------get");

	}

	@RequestMapping(value = "parkingFee", method = RequestMethod.GET)
	public void parkingFee() {
		logger.info("parkingFee--------get");

	}
}
