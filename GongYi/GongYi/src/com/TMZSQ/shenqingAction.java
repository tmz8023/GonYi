package com.TMZSQ;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class shenqingAction {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	HttpServletResponse response = ServletActionContext.getResponse();
	shenqingDaoImpl sqd=new shenqingDaoImpl();
	/**
	 * ע��ʱ��ȡ�û�����û�������������֤�û�ע��ʱ���û����Ƿ���ڣ�
	 */
	public void query(){
		String name=(String) session.getAttribute("name");
		response.setCharacterEncoding("UTF-8");
		String status=sqd.query(name);
		try {
			response.getWriter().print(status);
		} catch (IOException e) {

		}
		//return "status";
	}
	/**
	 * ���ݵ�ǰ�û�����ѯ�û���֤��״̬
	 */
	public void quer(){
		String name=(String) session.getAttribute("name");
		response.setCharacterEncoding("UTF-8");
		String statu=sqd.query(name);
		try {
			response.getWriter().print(statu);
		} catch (IOException e) {

		}
		//return "status";
	}
	public String selectSname(){
		String name=(String) session.getAttribute("name");
		response.setCharacterEncoding("UTF-8");
		List<String> sn=sqd.selectSname(name);
		request.setAttribute("xmid", sn);
		return "ss";
	}
}
