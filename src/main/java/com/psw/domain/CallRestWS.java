package com.psw.domain;

import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;

import org.apache.cxf.helpers.IOUtils;
import org.apache.cxf.io.CachedOutputStream;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class CallRestWS {
	private String restClient() throws Exception {
		String addr = "신청후 승인된 사용하실려는 서비스의 URL" + "?ServiceKey=";
		String serviceKey = "발급받으신 서비스키";
		String parameter = "";

		// 인증키(서비스키) url인코딩
		serviceKey = URLEncoder.encode(serviceKey, "UTF-8");

		// parameter setting
		/*
		 * parameter = parameter + "&" + "PARAM1=AAA"; parameter = parameter + "&" +
		 * "PARAM2=BBB"; parameter = parameter + "&" + "PARAM3=CCC";
		 */

		addr = addr + serviceKey + parameter;

		URL url = new URL(addr);
		InputStream in = url.openStream();
		CachedOutputStream bos = new CachedOutputStream();
		IOUtils.copy(in, bos);
		in.close();
		bos.close();
		return bos.getOut().toString();
	}

	String html = "<title>First parse</title>" + "<p>Parsed HTML into a doc.</p>";
	Document doc = Jsoup.parse(html);

}
