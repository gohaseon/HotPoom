package com.gear.hotpoom.vo;

import java.sql.Timestamp;

public class ChatRoom {
	private int no;
	private Timestamp regdate;
	
	public ChatRoom() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
}
