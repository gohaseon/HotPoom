package com.gear.hotpoom.vo;

import java.sql.Timestamp;

public class Message {
	private int no, chatUserNo;
	private String content;
	private Timestamp regdate;
	
	public Message() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getChatUserNo() {
		return chatUserNo;
	}

	public void setChatUserNo(int chatUserNo) {
		this.chatUserNo = chatUserNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
}
