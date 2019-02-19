package com.psw.domain;

public class LoginDTO {
	private String id;
	private String name;
	private boolean admin;

	public LoginDTO() {
		// TODO Auto-generated constructor stub
	}

	public LoginDTO(String id, String name, boolean admin) {
		super();
		this.id = id;
		this.name = name;
		this.admin = admin;
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

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "LoginDTO [id=" + id + ", name=" + name + ", admin=" + admin + "]";
	}

}
