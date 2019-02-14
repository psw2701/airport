package com.psw.domain;

public class AirportVO {
	private String code;
	private String name;

	public AirportVO() {
		// TODO Auto-generated constructor stub
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "AirportVO [code=" + code + ", name=" + name + "]";
	}

}
