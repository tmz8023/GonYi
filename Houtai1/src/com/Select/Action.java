package com.Select;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class Action {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	HttpServletResponse response = ServletActionContext.getResponse();
	Dao fd=new DaoImpl();
	lz ls = new lz();
	
	/*
	 * ∑÷“≥≤È—Ø
	 */
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

		}
		util util=ct.select(currPage, pageSize);
		request.setAttribute("List1", util);
		request.getRequestDispatcher("/bootstrap/chaxun1.jsp").forward(request, response);

		int total=fd.getCount();
		session.setAttribute("total", total);
		/*int money=fy.SumMoney();
		session.setAttribute("Sumoney", money);*/

		return "fenye";
	}
}
