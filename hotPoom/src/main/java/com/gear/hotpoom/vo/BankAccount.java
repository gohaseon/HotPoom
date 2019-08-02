package com.gear.hotpoom.vo;

import java.sql.Timestamp;

public class BankAccount {
	private int no, userNo, bankNo;
	private String num;
	private Timestamp regdate;
	
	public BankAccount() {
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

	public int getBankNo() {
		return bankNo;
	}

	public void setBankNo(int bankNo) {
		this.bankNo = bankNo;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
}
