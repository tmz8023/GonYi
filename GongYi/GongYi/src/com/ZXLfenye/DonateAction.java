package com.ZXLfenye;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ZXLDonate.DaoImpl;
import com.ZXLDonate.DonateInfo;



public class DonateAction {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	HttpServletResponse response = ServletActionContext.getResponse();
	
	DaoImpl dd=new DaoImpl();
	
	
	
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
		request.setAttribute("list", util);
		request.getRequestDispatcher("/bootstrap/gerenzhongxin.jsp").forward(request, response);
		
		int total=fy.getCount();
		session.setAttribute("total", total);
		int money=fy.SumMoney();
		session.setAttribute("Sumoney", money);
		
		return "fenye";
	}*/
	
}
