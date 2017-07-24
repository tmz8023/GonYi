package com.ZXLItem;


import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class ItemAction {
	/**
	 * 得到Item.jsp的值并插到数据库中
	 * @return
	 */
	HttpSession se=ServletActionContext.getRequest().getSession();
	public String getDateAction(){
		HttpServletRequest request=ServletActionContext.getRequest();
		String date=request.getParameter("asd");
		String finals=request.getParameter("qwer");
		System.out.println("date  "+date+"finals  "+finals);
		DaoImpl impl=new DaoImpl();
		List<ItemInfo> list=impl.select();
		int id=list.get(0).getSh_xm_id();
		System.out.println("id"+id);
		impl.getDate(date, finals, id);
		//String states="已发布";
		impl.updateStates("已发布", id);
		System.out.println("123123");
		
		return "get";
		
	}

	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	ItemInfo info=new ItemInfo();
	ItemDao id=new DaoImpl();
	Item it;
	public Item getIt() {
		return it;
	}
	public void setIt(Item it) {
		this.it = it;
	}
	/*
	 * 从数据库里面查询一个项目显示到后台项目发布界面
	 */
	public String select1(){
		SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd");
		String dd=time.format(new Date());
		List<ItemInfo> lit=id.select();
		System.out.println(lit.size());
		if(lit.size()!=0){
			lit.get(0).setDate(dd);
		}else{
			String str="没有可发布项目";
			request.setAttribute("str", str);
		}
		
		se.setAttribute("item",lit);
		return "sel";	
	}
	
	
	
	
	
	
	
	
	
}