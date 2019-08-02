package com.gear.hotpoom.vo;

import java.sql.Timestamp;

public class Bookmark {
	private int no, userNo, poomNo;
	private Timestamp regdate;
	
	public Bookmark() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getPoomNo() {
		return poomNo;
	}

	public void setPoomNo(int poomNo) {
		this.poomNo = poomNo;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
}