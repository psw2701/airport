package com.psw.domain;


public class CustomerVO {
	private String code;
	private String id;
	private String passwd;
	private String name;
	private String zipCode;
	private String address;
	private String phone;
	private String email;

	public CustomerVO() {
		// TODO Auto-generated constructor stub
	}
	
	

	public CustomerVO(String id, String passwd) {
		super();
		this.id = id;
		this.passwd = passwd;
	}



	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public CustomerVO(String code, String id, String passwd, String name, String zipCode, String address, String phone,
			String email) {
		super();
		this.code = code;
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.zipCode = zipCode;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}

	@Override
	public String toString() {
		return "CustomerVO [code=" + code + ", id=" + id + ", passwd=" + passwd + ", name=" + name + ", zipCode="
				+ zipCode + ", address=" + address + ", phone=" + phone + ", email=" + email + "]";
	}

}
