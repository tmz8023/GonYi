package com.SZHzzsh;

import java.util.List;

public class util {
	private int total;//������
	private List rows;//ÿ�δ����ݿ��ȡ��������
	private String pageStr;//��װ ��ҳ [����]����
	private int allPage;//ʹ�������������������ҳ��
	private int page;//��ǰҳ������
	private int currPage;//��ǰҳ��
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
	 * ʹ��StringBuffer ��װ ��������
	 * @return
	 */
	public String getPageStr() {
		if(getCurrPage()<1)setCurrPage(1);//ҳ��С��1 ���ǵ�һҳ
		//ҳ���������ҳ����������ҳ��
		if(getCurrPage()>=getAllPage())setCurrPage(getAllPage()-1);
		StringBuffer sb = new StringBuffer();
		sb.append("<a href=?currPage=1&pageSize="+getPage()+">��ҳ</a>"+" ");
		sb.append("<a href=?currPage="+(getCurrPage()-1)+"&pageSize="+getPage()+">��һҳ</a>"+" ");
		
		sb.append("<a href=?currPage="+(getCurrPage()+1)+"&pageSize="+getPage()+">��һҳ</a>"+" ");
		sb.append("<a href=?currPage="+getAllPage()+"&pageSize="+getPage()+">βҳ</a>"+" ");
		return sb.toString();
	}
	//ͨ���������������ҳ��
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
