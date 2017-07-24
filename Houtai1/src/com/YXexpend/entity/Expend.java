package com.YXexpend.entity;

import java.util.Date;

public class Expend {
	private int expend_askid;
	private String expend_name;
	private String expend_money;
	private Date expend_time;
	private String expend_perspon;
	public int getExpend_askid() {
		return expend_askid;
	}
	public void setExpend_askid(int expend_askid) {
		this.expend_askid = expend_askid;
	}
	public String getExpend_name() {
		return expend_name;
	}
	public void setExpend_name(String expend_name) {
		this.expend_name = expend_name;
	}
	public String getExpend_money() {
		return expend_money;
	}
	public void setExpend_money(String expend_money) {
		this.expend_money = expend_money;
	}
	public Date getExpend_time() {
		return expend_time;
	}
	public void setExpend_time(Date expend_time) {
		this.expend_time = expend_time;
	}
	public String getExpend_perspon() {
		return expend_perspon;
	}
	public void setExpend_perspon(String expend_perspon) {
		this.expend_perspon = expend_perspon;
	}
	
}
