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
@RequestMapping("/customer/*")
public class CustomerController {
	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	private static final String LOGIN = "login";

	@Autowired
	private CustomerService service;

	@RequestMapping(value = "passGetCus", method = RequestMethod.GET)
	public String passGetCus() {
		logger.info("passGetCus---------------passGetCus");
		return "customer/passCus";
	}

	@RequestMapping(value = "passPostCus", method = RequestMethod.POST)
	public String passPostCus(String password, Model model, HttpSession session) {
		logger.info("passPostCus---------------passPostCus");

		LoginDTO dto = (LoginDTO) session.getAttribute(LOGIN);

		CustomerVO vo = new CustomerVO();
		vo.setId(dto.getId());
		vo.setPasswd(password);
		logger.info("vo================>" + vo);

		int sameResult = service.samePwd(vo);
		logger.info("sameResult================>" + sameResult);

		if (sameResult == 1) {
			return "redirect:/customer/modifyCus";
		}
		model.addAttribute("sameResult", sameResult);

		return "redirect:/customer/modifyCus";
	}

	@RequestMapping(value = "modifyCus", method = RequestMethod.GET)
	public String getModify(Model model, HttpSession session) {
		logger.info("modifyCus ------ get");
		LoginDTO dto = (LoginDTO) session.getAttribute(LOGIN);
		CustomerVO vo = new CustomerVO();
		vo.setId(dto.getId());
		vo = service.selectCustomerById(vo);
		
		logger.info("vo =====> " + vo);
		
		model.addAttribute("customerVO", vo);
		return "customer/modifyCus";
	}

	@RequestMapping(value = "modifyCus", method = RequestMethod.POST)
	public String postModify(CustomerVO vo, Model model) {
		logger.info("modifyCus ------ post");
		return "customer/resultCus";
	}
	
	@RequestMapping(value = "remove", method = RequestMethod.POST)
	public String remove(CustomerVO vo, Model model, String code) {
		logger.info("remove ------ post");
		
		service.delete(code);
		return "home";
	}
}
