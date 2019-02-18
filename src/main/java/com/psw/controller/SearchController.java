package com.psw.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/search/")
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@RequestMapping(value = "searchId", method = RequestMethod.GET)
	public String getSearchId() {
		logger.info("searchId ------ get");
		return"search/searchId";
	}
	
	/*@RequestMapping(value = "search", method = RequestMethod.POST)
	public String postJoin(String name, String password, Model model) {
		logger.info("searchId - post");
		logger.info("name = " + name);
		logger.info("password = " + password);

		model.addAttribute("name", name);
		model.addAttribute("password", password);

		return "joinResult";
	}*/ 
	
	@RequestMapping(value = "searchPw", method = RequestMethod.GET)
	public String getSearchPw() {
		logger.info("searchPw ------ get");
		return"search/searchPw";
	}
}
