package com.TMZyzxm;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import java.util.List;

public class XmshenqAction {
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 项目申请时。查询申请项目名与数据库中是否有存在相同的名字
	 * 
	 */
	public void query(){
		XmshenqDaoImpl xmd=new XmshenqDaoImpl();
		List<Xmshenq> li=xmd.askName(name);
		int falg=0;
		for(int i=0;i<li.size();i++){
			if(li.get(i).getName().equals(name)){
				falg=1;
				break;
			}
		}
		try {
			response.getWriter().print(falg);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
