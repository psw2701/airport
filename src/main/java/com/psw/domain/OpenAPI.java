package com.psw.domain;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class OpenAPI {
	public static void main(String[] args) {
		BufferedReader br = null;
		try {
			String urlstr = "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList\r\n" + 
					"?ServiceKey=8FUtO6dnWvp42zWov7WnWewDjZ3Hj%2FzqyvSqrq92ZLcecL3YJ2h4rKZ%2FSRthW%2BSj0JZ8rLLjiw97ApFh%2BMkLdA%3D%3D&schStTime=0600&schEdTime=1800\r\n" + 
					"&schLineType=I&schIOType=I&schAirCode=PUS\r\n" + 
					"";
			URL url = new URL(urlstr);
			System.out.println("===========>"+urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
			String result = "";
			String line;
			while ((line = br.readLine()) != null) {
				result = result + line + "\n";
			}
			System.out.println(result);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
