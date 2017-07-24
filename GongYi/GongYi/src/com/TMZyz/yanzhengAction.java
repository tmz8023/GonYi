package com.TMZyz;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class yanzhengAction {
	String username;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpSession session=request.getSession();
	/**
	 * 验证注册用户名是否唯一
	 */
	public void yz(){
		yanzhengDaoImpl yzd=new yanzhengDaoImpl();
		List<yanzheng> li=yzd.query(username);
		int flag=0;
		for(int i=0;i<li.size();i++){
			if(li.get(i).getUsername().equals(username)){
				flag=1;
				break;
			}
		}
		try {
			response.getWriter().print(flag);
		} catch (Exception e) {
			
		}
	}
}
