package com.ZXLitem;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.ServletActionRedirectResult;


public class ItemAction {
	SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd");
	String dd=time.format(new Date());	
	InfoDao da=new DaoImpl();
	ItemInfo nn=new ItemInfo();
	Item it;
	public Item getItf() {
		return it;
	}
	public void setItf(Item it) {
		this.it = it;
	}  
	
	
	public String select(){
		List<ItemInfo> li=da.select();
		HttpSession se=ServletActionContext.getRequest().getSession();
		se.setAttribute("kk", li);
		
		System.out.println("pp");
		return "sel";

	}
	
	public String query(){
		DaoImpl impl=new DaoImpl();
		List<ItemInfo> li=impl.queryProject();
		HttpSession se=ServletActionContext.getRequest().getSession();
		se.setAttribute("list", li);
		return "query";
		
	}
	public String projectjuankuan(){
		HttpServletRequest request=ServletActionContext.getRequest();
		String  id=request.getParameter("id");
		//System.out.println("id shi "+id);
		DaoImpl ddd=new DaoImpl();
		List<Mani> listd=ddd.queryprojectxiangqing(id);
		//System.out.println("listlujing  "+listd.get(0).getLujing()+"name  "+listd.get(0).getName());
		request.setAttribute("list", listd);
		List<Money> listm=ddd.countmoney(id);
		request.setAttribute("money",listm.get(0).getMoney());
		System.out.println("123"+listd.get(0).getLujing());
		request.setAttribute("count",listm.get(0).getCount() );
		request.setAttribute("id", id);
		return "asd";
	}
}
