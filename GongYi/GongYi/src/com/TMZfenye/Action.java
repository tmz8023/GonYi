package com.TMZfenye;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class Action {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	HttpServletResponse response = ServletActionContext.getResponse();
	fenyeDao fy=new fenyeDao();
	
	public String fenye() throws Exception{
		fenyeService ct=new fenyeService();
		String currPageStr=request.getParameter("currPage");//µ±Ç°Ò³Âë
		String pageSizeStr=request.getParameter("pageSize");//×ÜÒ³Âë
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
		request.setAttribute("ListCasee", util);
		request.getRequestDispatcher("/bootstrap/gongyixiangmu.jsp").forward(request, response);
		
		
		return "fenye";
	}
}
