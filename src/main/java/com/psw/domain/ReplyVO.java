package com.psw.domain;

import java.util.Date;

public class ReplyVO {
	private int no;
	private String title;
	private String content;
	private Date regDate;
	private BoardVO bNo;
	private ManagerVO managerCode;
	private boolean isReply;
	public ReplyVO() {
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

	public BoardVO getbNo() {
		return bNo;
	}

	public void setbNo(BoardVO bNo) {
		this.bNo = bNo;
	}

	public ManagerVO getManagerCode() {
		return managerCode;
	}

	public void setManagerCode(ManagerVO managerCode) {
		this.managerCode = managerCode;
	}

	public boolean isReply() {
		return isReply;
	}

	public void setReply(boolean isReply) {
		this.isReply = isReply;
	}

	@Override
	public String toString() {
		return "ReplyVO [no=" + no + ", title=" + title + ", content=" + content + ", regDate=" + regDate + ", bNo="
				+ bNo + ", managerCode=" + managerCode + ", isReply=" + isReply + "]";
	}

	
}
