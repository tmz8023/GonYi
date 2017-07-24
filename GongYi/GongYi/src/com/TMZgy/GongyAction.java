package com.TMZgy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class GongyAction {
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	public String sele(){
		GongyDaoImpl gyd=new GongyDaoImpl();
		List<Gongy> ss=gyd.sele();
		session.setAttribute("ListCasee", ss);
		return "sele";
	}
}
