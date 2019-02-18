package com.psw.controller;

import javax.servlet.http.HttpServletRequest;

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
		logger.info("joinInfo ------ get");
		return "join/joinInfo";
	}

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String getJoin() {
		logger.info("join ------ get");
		return "join/joinForm";
	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String postJoin(CustomerVO vo, Model model, HttpServletRequest req) {
		logger.info("join - post");

		String code = service.nextCode();
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String passwd = req.getParameter("passwd");
		String phone = req.getParameter("phone");
		String phone2 = req.getParameter("phone2");
		String phone3 = req.getParameter("phone3");
		String email1 = req.getParameter("email1");
		String email2 = req.getParameter("email2");
		String zipCode = req.getParameter("zipCode");
		String address = req.getParameter("address");
		String detailAddr = req.getParameter("detailAddr");

		CustomerVO customer = new CustomerVO(code, id, passwd, name, zipCode, (address + " " + detailAddr),
				(phone + "-" + phone2 + "-" + phone3), (email1 + "@" + email2));

		vo.setCode(service.nextCode());
		vo.setPhone((phone + "-" + phone2 + "-" + phone3));
		vo.setEmail((email1 + "@" + email2));
		vo.setAddress((address + " " + detailAddr));
		service.insert(vo);

		logger.info("customer====================>" + customer);

		model.addAttribute("customerVO", vo);
		return "home";
	}
}
