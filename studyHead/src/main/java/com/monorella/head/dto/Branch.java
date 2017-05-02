package com.monorella.head.dto;

public class Branch {
	private int branch_cd;
	private int branch_owner_cd;
	private String branch_name;
	private String branch_tel;
	private String branch_addr;
	private String branch_in_date;
	private int room_num;
	private int member_num;
	
	public int getBranch_cd() {
		return branch_cd;
	}
	public void setBranch_cd(int branch_cd) {
		this.branch_cd = branch_cd;
	}
	public int getBranch_owner_cd() {
		return branch_owner_cd;
	}
	public void setBranch_owner_cd(int branch_owner_cd) {
		this.branch_owner_cd = branch_owner_cd;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public String getBranch_tel() {
		return branch_tel;
	}
	public void setBranch_tel(String branch_tel) {
		this.branch_tel = branch_tel;
	}
	public String getBranch_addr() {
		return branch_addr;
	}
	public void setBranch_addr(String branch_addr) {
		this.branch_addr = branch_addr;
	}
	public String getBranch_in_date() {
		return branch_in_date;
	}
	public void setBranch_in_date(String branch_in_date) {
		this.branch_in_date = branch_in_date;
	}
	public int getRoom_num() {
		return room_num;
	}
	public void setRoom_num(int room_num) {
		this.room_num = room_num;
	}
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	
	@Override
	public String toString() {
		return "Branch [branch_cd=" + branch_cd + ", branch_owner_cd=" + branch_owner_cd + ", branch_name="
				+ branch_name + ", branch_tel=" + branch_tel + ", branch_addr=" + branch_addr + ", branch_in_date="
				+ branch_in_date + ", room_num=" + room_num + ", member_num=" + member_num + "]";
	}
}
