package com.psw.domain;

import java.util.Date;

public class NoticeVO {
	private int no;
	private String title;
	private String content;
	private Date regDate;
	private int viewCnt;
	private String file;
	private ManagerVO managerCode;

	public NoticeVO() {
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

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public ManagerVO getManagerCode() {
		return managerCode;
	}

	public void setManagerCode(ManagerVO managerCode) {
		this.managerCode = managerCode;
	}

	@Override
	public String toString() {
		return "NoticeVO [no=" + no + ", title=" + title + ", content=" + content + ", regDate=" + regDate
				+ ", viewCnt=" + viewCnt + ", file=" + file + ", managerCode=" + managerCode + "]";
	}

}
