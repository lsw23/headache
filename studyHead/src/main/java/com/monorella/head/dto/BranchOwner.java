package com.monorella.head.dto;

public class BranchOwner {
	private String branch_owner_cd;
	private String owner_num;
	private String branch_nm;
	private String owner_nm;
	private String branch_owner_id;
	private String branch_owner_pw;
	private String branch_owner_addr;
	private String branch_owner_tel;
	private String branch_owner_in_date;
	
	public String getBranch_owner_cd() {
		return branch_owner_cd;
	}
	public void setBranch_owner_cd(String branch_owner_cd) {
		this.branch_owner_cd = branch_owner_cd;
	}
	public String getOwner_num() {
		return owner_num;
	}
	public void setOwner_num(String owner_num) {
		this.owner_num = owner_num;
	}
	public String getBranch_nm() {
		return branch_nm;
	}
	public void setBranch_nm(String branch_nm) {
		this.branch_nm = branch_nm;
	}
	public String getOwner_nm() {
		return owner_nm;
	}
	public void setOwner_nm(String owner_nm) {
		this.owner_nm = owner_nm;
	}
	public String getBranch_owner_id() {
		return branch_owner_id;
	}
	public void setBranch_owner_id(String branch_owner_id) {
		this.branch_owner_id = branch_owner_id;
	}
	public String getBranch_owner_pw() {
		return branch_owner_pw;
	}
	public void setBranch_owner_pw(String branch_owner_pw) {
		this.branch_owner_pw = branch_owner_pw;
	}
	public String getBranch_owner_addr() {
		return branch_owner_addr;
	}
	public void setBranch_owner_addr(String branch_owner_addr) {
		this.branch_owner_addr = branch_owner_addr;
	}
	public String getBranch_owner_tel() {
		return branch_owner_tel;
	}
	public void setBranch_owner_tel(String branch_owner_tel) {
		this.branch_owner_tel = branch_owner_tel;
	}
	public String getBranch_owner_in_date() {
		return branch_owner_in_date;
	}
	public void setBranch_owner_in_date(String branch_owner_in_date) {
		this.branch_owner_in_date = branch_owner_in_date;
	}
	
	@Override
	public String toString() {
		return "BranchOwner [branch_owner_cd=" + branch_owner_cd + ", owner_num=" + owner_num + ", branch_nm="
				+ branch_nm + ", owner_nm=" + owner_nm + ", branch_owner_id=" + branch_owner_id + ", branch_owner_pw="
				+ branch_owner_pw + ", branch_owner_addr=" + branch_owner_addr + ", branch_owner_tel="
				+ branch_owner_tel + ", branch_owner_in_date=" + branch_owner_in_date + "]";
	}
}
