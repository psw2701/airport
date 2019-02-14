package com.psw.domain;

import java.util.Date;
import java.util.List;

public class BoardVO {
	private int no;
	private String title;
	private String content;
	private Date regDate;
	private int viewCnt;
	private boolean open;
	private String progress;
	private boolean required;
	private List<String> files; // 첨부파일
	private CustomerVO cusName; // 고객명
	private AirportVO airCode; // 공항코드

	public BoardVO() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public boolean isOpen() {
		return open;
	}

	public void setOpen(boolean open) {
		this.open = open;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	public boolean isRequired() {
		return required;
	}

	public void setRequired(boolean required) {
		this.required = required;
	}

	public List<String> getFiles() {
		return files;
	}

	public void setFiles(List<String> files) {
		this.files = files;
	}

	public CustomerVO getCusName() {
		return cusName;
	}

	public void setCusName(CustomerVO cusName) {
		this.cusName = cusName;
	}

	public AirportVO getAirCode() {
		return airCode;
	}

	public void setAirCode(AirportVO airCode) {
		this.airCode = airCode;
	}

	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", content=" + content + ", regDate=" + regDate + ", viewCnt="
				+ viewCnt + ", open=" + open + ", progress=" + progress + ", required=" + required + ", files=" + files
				+ ", cusName=" + cusName + ", airCode=" + airCode + "]";
	}

}
