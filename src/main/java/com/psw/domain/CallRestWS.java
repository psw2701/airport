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
		String addr = "��û�� ���ε� ����ϽǷ��� ������ URL" + "?ServiceKey=";
		String serviceKey = "�߱޹����� ����Ű";
		String parameter = "";

		// ����Ű(����Ű) url���ڵ�
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
