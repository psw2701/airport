package com.psw.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/airportInfo/*")
public class AirportInfoController {
	private static final Logger logger = LoggerFactory.getLogger(AirportInfoController.class);

	@RequestMapping(value = "pregnantchildren", method = RequestMethod.GET)
	public void pregnantchildren() {
		logger.info("pregnantchildren--------get");

	}

	@RequestMapping(value = "trafficAbbreviation", method = RequestMethod.GET)
	public void trafficAbbreviation() {
		logger.info("trafficAbbreviation--------get");

	}

	@RequestMapping(value = "pets", method = RequestMethod.GET)
	public void pets() {
		logger.info("pets--------get");

	}

	@RequestMapping(value = "business", method = RequestMethod.GET)
	public void business() {
		logger.info("business--------get");

	}
}
