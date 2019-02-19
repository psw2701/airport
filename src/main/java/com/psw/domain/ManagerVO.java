package com.psw.domain;

public class ManagerVO {
	private String code;
	private String name;

	public ManagerVO() {
		// TODO Auto-generated constructor stub
	}
	
	

	public ManagerVO(String code, String name) {
		super();
		this.code = code;
		this.name = name;
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
		return "ManagerVO [code=" + code + ", name=" + name + "]";
	}

}
