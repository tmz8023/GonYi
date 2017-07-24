package com.TMZyzzj;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class ZijinyzAction {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	HttpServletResponse response = ServletActionContext.getResponse();
	ZijinyzDaoImpl zjd=new ZijinyzDaoImpl();
	/**
	 * 获得该登录用户下的捐款总金额
	 */
	public void moy(){
		String askName=request.getParameter("ex_name");
		response.setCharacterEncoding("UTF-8");
		String money=zjd.sum(askName);
		System.out.println("moy" + money+"1");
		request.setAttribute("money", money);
		
		
	}
}
