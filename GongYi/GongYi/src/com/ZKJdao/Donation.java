package com.ZKJdao;

public class Donation {
	int ID;
	String zhname;
	int money;
	int projectname;
	String donationtime;
	String incomename;
	String status;
	String iidd;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getZhname() {
		return zhname;
	}
	public void setZhname(String zhname) {
		this.zhname = zhname;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}

	public int getProjectname() {
		return projectname;
	}
	public void setProjectname(int projectname) {
		this.projectname = projectname;
	}
	public String getDonationtime() {
		return donationtime;
	}
	public void setDonationtime(String donationtime) {
		this.donationtime = donationtime;
	}
	public String getIncomename() {
		return incomename;
	}
	public void setIncomename(String incomename) {
		this.incomename = incomename;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getIidd() {
		return iidd;
	}
	public void setIidd(String iidd) {
		this.iidd = iidd;
	}
	
}
