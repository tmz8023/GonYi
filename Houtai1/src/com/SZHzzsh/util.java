package com.SZHzzsh;

import java.util.List;

public class util {
	private int total;//总条数
	private List rows;//每次从数据库读取的数据量
	private String pageStr;//封装 分页 [导航]连接
	private int allPage;//使用总条数计算出来的总页数
	private int page;//当前页的条数
	private int currPage;//当前页码
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getCurrPage() {
		return currPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	public List getRows() {
		return rows;
	}
	public void setRows(List rows) {
		this.rows = rows;
	}
	
	/**
	 * 使用StringBuffer 组装 导航连接
	 * @return
	 */
	public String getPageStr() {
		if(getCurrPage()<1)setCurrPage(1);//页码小于1 就是第一页
		//页码大于了总页数，就是总页数
		if(getCurrPage()>=getAllPage())setCurrPage(getAllPage()-1);
		StringBuffer sb = new StringBuffer();
		sb.append("<a href=?currPage=1&pageSize="+getPage()+">首页</a>"+" ");
		sb.append("<a href=?currPage="+(getCurrPage()-1)+"&pageSize="+getPage()+">上一页</a>"+" ");
		
		sb.append("<a href=?currPage="+(getCurrPage()+1)+"&pageSize="+getPage()+">下一页</a>"+" ");
		sb.append("<a href=?currPage="+getAllPage()+"&pageSize="+getPage()+">尾页</a>"+" ");
		return sb.toString();
	}
	//通过总条数计算的总页数
	public int getAllPage() {
		allPage = getTotal()/getPage();
		if(getTotal()%getPage()>0){
			allPage++;
		}
		return allPage;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
}	
