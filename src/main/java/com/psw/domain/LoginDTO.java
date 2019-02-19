package com.psw.domain;

public class LoginDTO {
	private String id;
	private String name;
	private boolean admin;

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
