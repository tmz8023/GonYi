package com.TMZRingUp;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;


public class RingupAction {
	
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpSession session=request.getSession();
	
	public String method(){
		String roleNe=(String)session.getAttribute("name");
		String username=request.getParameter("sf_username");
		String password=request.getParameter("sf_password");
		System.out.println(username+" "+"1"+" "+password);
		RingUpaDao dao=new RingUpDaoImpl();
		RingUpDaoImpl rd=new RingUpDaoImpl();
		List<RingUpa> li=rd.name();
		int flag=0;
		for(int i=0;i<li.size();i++){
			if(li.get(i).getName().equals(username)&&li.get(i).getPass().equals(password)){
				flag=1;
				break;
			}
		}
		if(flag==1){
			String rolN=dao.queryRole1111(username);
			session.setAttribute("rolN", rolN);
			List<RoAcRA>listRR=dao.queryluJing(username);
			session.setAttribute("lujing",listRR);
			session.setAttribute("name", username);
			return "success";
		}else{
			String st="’À∫≈√‹¬Î≤ª∆•≈‰!«Î÷ÿ–¬µ«¬º";
			request.setAttribute("str", st);
			return "error";
		}
	}
	public String SelectProjectMoney(){
		RingUpDaoImpl rd=new RingUpDaoImpl();
		List<SelectProjectMoney> list=rd.SelectProjectMoney();
		request.setAttribute("list", list);
		return "SelectProjectMoney";
	}
}
