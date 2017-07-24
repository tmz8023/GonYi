package com.TMZRingUp;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;



public class RingUpAction {
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpSession session=request.getSession();

	public String ringName(){

		String username=request.getParameter("name");
		String password=request.getParameter("pass");
		RingUpDaoImpl rd=new RingUpDaoImpl();
		List<RingUpa> li=rd.name();
		int flag=0;
		int countc=rd.Countc();
		session.setAttribute("countc", countc);
		
		int countm=rd.Countm();
		session.setAttribute("countm", countm);
		
		
		for(int i=0;i<li.size();i++){

		 if(li.get(i).getName().equals(username)&&li.get(i).getPass().equals(password)){
				flag=1;
				break;
			}
		}
		if(flag==1){
			session.setAttribute("name", username);
			
			return "success";
		}else{
			String str="账号或密码不正确。请重新登录：";
			request.setAttribute("str", str);
			return "error";
		}
		
		
	}
}
