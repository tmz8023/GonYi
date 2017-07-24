package com.ZKJdao;


public class Faqixiangmu {
	private int id;
	private String entryname;//项目名称
	private String proposer;//申请人
	private String reason;//项目申请原因
	private int amount;//项目金额
	private String projecttype;//项目类别
	private String time;
	private String finals;
	private String status;
	private String jy;
	private String lujing;
	String lzstatus;
	String lzjianyi;
	
	public String getLzstatus() {
		return lzstatus;
	}
	public void setLzstatus(String lzstatus) {
		this.lzstatus = lzstatus;
	}
	public String getLzjianyi() {
		return lzjianyi;
	}
	public void setLzjianyi(String lzjianyi) {
		this.lzjianyi = lzjianyi;
	}
	public String getFinals() {
		return finals;
	}
	public void setFinals(String finals) {
		this.finals = finals;
	}
	public String getJy() {
		return jy;
	}
	public void setJy(String jy) {
		this.jy = jy;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEntryname() {
		return entryname;
	}
	public void setEntryname(String entryname) {
		this.entryname = entryname;
	}
	public String getProposer() {
		return proposer;
	}
	public void setProposer(String proposer) {
		this.proposer = proposer;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}


	public String getProjecttype() {
		return projecttype;
	}
	public void setProjecttype(String projecttype) {
		this.projecttype = projecttype;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getLujing() {
		return lujing;
	}
	public void setLujing(String lujing) {
		this.lujing = lujing;
	}
	
}
