package com.enroll;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class enrollAction extends ActionSupport{
	/**
	 * 将注册的用户插入数据库
	 * @return
	 */
	public String add(){
		enroll el=new enroll();
		HttpServletRequest request=ServletActionContext.getRequest();
		el.setEnroll_name(request.getParameter("name"));
		el.setEnroll_pass(request.getParameter("pass"));
		el.setEnroll_spass(request.getParameter("spass"));
		el.setEnroll_gender(request.getParameter("gender"));
		el.setEnroll_carid(request.getParameter("carid"));
		el.setEnroll_sname(request.getParameter("sname"));
		el.setEnroll_phone(request.getParameter("phone"));
		el.setEnroll_email(request.getParameter("email"));
		enrollDaoImpl edl=new enrollDaoImpl();
		System.out.println(el.getEnroll_name()+el.getEnroll_pass()+el.getEnroll_spass()+el.getEnroll_gender()+el.getEnroll_carid()+el.getEnroll_sname()+el.getEnroll_phone()+el.getEnroll_email());
		edl.add(el);
		return "add";
	}
}
