package com.psw.domain;

import java.util.Date;

public class ReplyVO {
	private int no;
	private String title;
	private String content;
	private Date regDate;
	private BoardVO bNo;
	private ManagerVO managerNo;

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

	public ManagerVO getManagerNo() {
		return managerNo;
	}

	public void setManagerNo(ManagerVO managerNo) {
		this.managerNo = managerNo;
	}

	@Override
	public String toString() {
		return "ReplyVO [no=" + no + ", title=" + title + ", content=" + content + ", regDate=" + regDate + ", bNo="
				+ bNo + ", managerNo=" + managerNo + "]";
	}

}
