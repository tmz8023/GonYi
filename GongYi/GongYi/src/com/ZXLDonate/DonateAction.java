package com.ZXLDonate;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ZXLfenye.fenyeDao;
import com.ZXLfenye.fenyeService;
import com.ZXLfenye.util;



public class DonateAction {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	HttpServletResponse response = ServletActionContext.getResponse();
	InfoDao infa=new DaoImpl();
	DaoImpl dd=new DaoImpl();
	DonateInfo din=new DonateInfo();
	Donate don;
	public Donate getDon() {
		return don;
	}
	public void setDon(Donate don) {
		this.don = don;
	}
	
	public String select(){
		
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession se=ServletActionContext.getRequest().getSession();
		String name=(String )se.getAttribute("name");
		DaoImpl op=new DaoImpl();
		List<DonateInfo> list=op.select(name);
		request.setAttribute("list", list);
		
		int count=dd.getCount(name);
		session.setAttribute("ls",count);
		int money=dd.getMoney(name);
		session.setAttribute("money", money);
		return "sel";
		
	}
	/*fenyeDao fy=new fenyeDao();
	public String fenye() throws Exception{
		fenyeService ct=new fenyeService();
		String currPageStr=request.getParameter("currPage");
		String pageSizeStr=request.getParameter("pageSize");
		Integer currPage=null;
		Integer pageSize=null;
		try{
			currPage=Integer.parseInt(currPageStr);
			pageSize=Integer.parseInt(pageSizeStr);
		}
		catch(Exception e){
			System.out.println("1111111");
		}
		System.out.println(currPage+"===="+pageSize);
		util util=ct.select(currPage, pageSize);
		request.setAttribute("Li", util);
		request.getRequestDispatcher("/bootstrap/gerenzhongxin.jsp").forward(request, response);
		
		int total=fy.getCount();
		session.setAttribute("total", total);
		int money=fy.SumMoney();
		session.setAttribute("Sumoney", money);
		
		return "fenye";
	}*/
	
}
