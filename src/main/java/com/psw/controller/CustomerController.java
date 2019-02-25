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
@RequestMapping("/customer/*")
public class CustomerController {
	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	
	@Autowired
	private CustomerService service;
	
	@RequestMapping(value = "modifyCus", method= RequestMethod.GET)
	public String getModify(CustomerVO vo, Model model) {
		logger.info("modifyCus ------ get");
		return "join/modifyCus";
	}
	
	@RequestMapping(value = "modifyCus", method = RequestMethod.POST)
	public String postModify(CustomerVO vo, Model model) {
		logger.info("modifyCus ------ post");
		return "home";
	}
}
