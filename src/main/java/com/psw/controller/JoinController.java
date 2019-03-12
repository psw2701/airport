package com.psw.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
		return "join/successJoin";
	}
	
	@RequestMapping(value = "successJoin", method = RequestMethod.GET)
	public void successJoin() {
		
	}
	
	@ResponseBody
	@RequestMapping(value = "duplicatedId", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Boolean>> duplicatedId(String id){
		logger.info("duplicatedId---------duplicatedId");
		ResponseEntity<Map<String, Boolean>> entity = null;
		try {
			//id
			CustomerVO vo = new CustomerVO();
			vo.setId(id);
			vo = service.selectCustomerById(vo);
			logger.info("vo========>"+vo);
			if(vo==null) {
				Map<String, Boolean> map = new HashMap();
				map.put("result", false);
				entity = new ResponseEntity<>(map, HttpStatus.OK);
			}else if(vo!=null) {
				Map<String, Boolean> map = new HashMap();
				map.put("result", true);
				entity = new ResponseEntity<>(map, HttpStatus.OK);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return entity;
		
	}
}
