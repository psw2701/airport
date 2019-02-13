package com.psw.domain;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.cxf.helpers.IOUtils;
import org.json.simple.JSONObject;

@WebServlet("/PublicData.do")
public class PublicData extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public PublicData() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String addr = "http://openapi.airport.co.kr/service/rest/AirportCodeList/getAirportCodeList?ServiceKey=";
		String serviceKey = "8FUtO6dnWvp42zWov7WnWewDjZ3Hj%2FzqyvSqrq92ZLcecL3YJ2h4rKZ%2FSRthW%2BSj0JZ8rLLjiw97ApFh%2BMkLdA%3D%3D";
		String parameter = "";
		// serviceKey = URLEncoder.encode(serviceKey,"utf-8");
		PrintWriter out = response.getWriter();
		parameter = parameter + "&" + "cityChina=ÎÃñ¶";
		parameter = parameter + "&" + "cityCode=KWJ";
		parameter = parameter + "&" + "cityEnglish=Gwangju";
		parameter = parameter + "&" + "cityJapan=ÎÃñ¶";
		parameter = parameter + "&" + "cityKorean=±¤ÁÖ";
		parameter = parameter + "&" + "_type=json";

		addr = addr + serviceKey + parameter;
		System.out.println("=======>"+addr);
		URL url = new URL(addr);

		System.out.println(addr);

		// BufferedReader in = new BufferedReader(new
		// InputStreamReader(url.openStream(), "UTF-8"));

		InputStream in = url.openStream();
		// CachedOutputStream bos = new CachedOutputStream();
		ByteArrayOutputStream bos1 = new ByteArrayOutputStream();
		IOUtils.copy(in, bos1);
		in.close();
		bos1.close();

		String mbos = bos1.toString("UTF-8");
		System.out.println("mbos: " + mbos);

		byte[] b = mbos.getBytes("UTF-8");
		String s = new String(b, "UTF-8");
		out.println(s);

		JSONObject json = new JSONObject();
		json.put("data", s);
		// json.put("data", data);
		System.out.println("json: " + json);

	}
	
 
}
