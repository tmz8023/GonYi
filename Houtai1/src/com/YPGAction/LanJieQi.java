package com.YPGAction;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.TMZRingUp.RoAcRA;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LanJieQi extends MethodFilterInterceptor{
	

	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception{
		
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String uri = request.getRequestURI();//得到请求路径
		System.out.println(uri+"     aaaaaaaaaaa");	
		
		List<RoAcRA> listt=(List<RoAcRA>)session.getAttribute("lujing");	
		//System.out.println(listt.size());
		for(int i = 0; i < listt.size(); i++) {
			//System.out.println(list.get(i).getAddrices().length()+"   dddddddddd");
			System.out.println(listt.get(i).getAddrices()+"   cccccccccc");
			//System.out.println(listAR.get(i).getAddrices().equals(uri)+"   bbbbbbbbbbb");
			if(listt.get(i).getAddrices().equals(uri)){
				System.out.println(listt.get(i).getAddrices()+"   ccccccccccbbbbbbbbb");
				String result = arg0.invoke();
				return result;
			}
			
		}
		
		return "quanxian";
	}		
}

