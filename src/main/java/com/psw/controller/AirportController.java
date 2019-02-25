package com.psw.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import java.net.URL;

import org.apache.cxf.helpers.IOUtils;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/airport/*")
public class AirportController {
	private static final Logger logger = LoggerFactory.getLogger(AirportController.class);

	@RequestMapping(value = "air",method=RequestMethod.GET)
	public String airportinfo() {
		logger.info("air--------get");
		return "airport/air";
	}
	
	@ResponseBody
	@RequestMapping(value="air", method=RequestMethod.POST)
	public ResponseEntity<Object> airport() throws IOException, ParseException {

		String addr = "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList?ServiceKey=";
		String serviceKey = "8FUtO6dnWvp42zWov7WnWewDjZ3Hj%2FzqyvSqrq92ZLcecL3YJ2h4rKZ%2FSRthW%2BSj0JZ8rLLjiw97ApFh%2BMkLdA%3D%3D";
		String parameter = "";

		parameter = parameter + "&" + "schStTime=0000"; // 예정시간
		parameter = parameter + "&" + "schEdTime=2400"; // 변경시간
		parameter = parameter + "&" + "schLineType=I"; // 항공편 종류 (국내 / 국제)
		parameter = parameter + "&" + "schIOType=O"; // 운행 타입(도착 / 출발)
		parameter = parameter + "&" + "schAirCode=TAE"; // 공항코드
		parameter = parameter + "&" + "numOfRows=100"; // 공항코드
		parameter = parameter + "&" + "_type=json";

		addr = addr + serviceKey + parameter;
		URL url = new URL(addr);

		System.out.println(addr);

		InputStream in = url.openStream();
		ByteArrayOutputStream bos1 = new ByteArrayOutputStream();
		IOUtils.copy(in, bos1);
		in.close();
		bos1.close();

		String mbos = bos1.toString("UTF-8");
		System.out.println("mbos: " + mbos);

		byte[] b = mbos.getBytes("UTF-8");
		String s = new String(b, "UTF-8");
		
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(s);		
		
		ResponseEntity<Object> entity = new ResponseEntity<>(obj, HttpStatus.OK); 

		return entity;
	}
}
