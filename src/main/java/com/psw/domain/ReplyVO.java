package com.psw.domain;

import java.util.Date;

public class ReplyVO {
	private int no;
	private String title;
	private String content;
	private Date regDate;
	private BoardVO boardNo;
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

	public BoardVO getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(BoardVO boardNo) {
		this.boardNo = boardNo;
	}

	public ManagerVO getManagerNo() {
		return managerNo;
	}

	public void setManagerNo(ManagerVO managerNo) {
		this.managerNo = managerNo;
	}

	@Override
	public String toString() {
		return "AnswerVO [no=" + no + ", title=" + title + ", content=" + content + ", regDate=" + regDate
				+ ", boardNo=" + boardNo + ", managerNo=" + managerNo + "]";
	}

}
