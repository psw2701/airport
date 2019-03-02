package com.psw.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import org.apache.cxf.helpers.IOUtils;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, String modal) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("modal",modal);
		
		return "home";
	}
	
	@ResponseBody
	@RequestMapping(value = "airsch", method = RequestMethod.GET)
	public ResponseEntity<Object> air() throws IOException, ParseException {
		logger.info("airsch--------get");
		
		
		Date date = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("HHmm");
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.HOUR, 3);
		String tday = sdf.format(date);
		String tday2 = sdf.format(cal.getTime());
		

		
		String addr = "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList?ServiceKey=";
		String serviceKey = "8FUtO6dnWvp42zWov7WnWewDjZ3Hj%2FzqyvSqrq92ZLcecL3YJ2h4rKZ%2FSRthW%2BSj0JZ8rLLjiw97ApFh%2BMkLdA%3D%3D";
		String parameter = "";
		

		parameter = parameter + "&" + "schStTime="+tday; // 예정시간
		parameter = parameter + "&" + "schEdTime="+tday2; // 변경시간
		parameter = parameter + "&" + "schLineType="; // 항공편 종류 (국내 / 국제)
		parameter = parameter + "&" + "schIOType=O"; // 운행 타입(출발)
		parameter = parameter + "&" + "schAirCode=TAE"; // 공항코드
		parameter = parameter + "&" + "numOfRows=5"; 
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
	
	@ResponseBody
	@RequestMapping(value = "portsch", method = RequestMethod.GET)
	public ResponseEntity<Object> airport() throws IOException, ParseException {
		logger.info("portsch--------get");
		Date date = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("HHmm");
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.HOUR, 3);
		
		String tday = sdf.format(date);
		String tday2 = sdf.format(cal.getTime());
		
		String addr = "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList?ServiceKey=";
		String serviceKey = "8FUtO6dnWvp42zWov7WnWewDjZ3Hj%2FzqyvSqrq92ZLcecL3YJ2h4rKZ%2FSRthW%2BSj0JZ8rLLjiw97ApFh%2BMkLdA%3D%3D";
		String parameter = "";
		
		parameter = parameter + "&" + "schStTime="+tday; // 예정시간
		parameter = parameter + "&" + "schEdTime="+tday2; // 변경시간
		parameter = parameter + "&" + "schLineType="; // 항공편 종류 (국내 / 국제)
		parameter = parameter + "&" + "schIOType=I"; // 운행 타입(도착)
		parameter = parameter + "&" + "schAirCode=TAE"; // 공항코드
		parameter = parameter + "&" + "numOfRows=5"; 
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
