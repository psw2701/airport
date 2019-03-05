package com.psw.domain;

public class LoginDTO {
	private String id;
	private String name;
	private String phone;
	private String email;
	private String cusCode;
	private String mngCode;

	public String getCusCode() {
		return cusCode;
	}

	public void setCusCode(String cusCode) {
		this.cusCode = cusCode;
	}

	private boolean admin;

	public LoginDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	public String getMngCode() {
		return mngCode;
	}

	public void setMngCode(String mngCode) {
		this.mngCode = mngCode;
	}

	@Override
	public String toString() {
		return "LoginDTO [id=" + id + ", name=" + name + ", phone=" + phone + ", email=" + email + ", cusCode="
				+ cusCode + ", mngCode=" + mngCode + ", admin=" + admin + "]";
	}

}
