package com.zkjAction;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.daozkj.Donation;
import com.daozkj.Idea;
import com.daozkj.Person;
import com.daozkj.Shixian;
import com.faqixiangmuzkj.Faqixiangmu;
import com.reviewprojectzkj.Reviewproject;

public class ZkjAction{

	/*
	 * ���������Ŀ������뵽���ݿ�
	 */
	public String Faqiservlet(){
		HttpServletRequest request=ServletActionContext.getRequest();
		//HttpServletResponse response=ServletActionContext.getResponse();
		try{
			request.setCharacterEncoding("utf-8");
		}catch(Exception e){
			System.out.println(e.getMessage()+":Faqiservlet");
		}
		String entryname=request.getParameter("entryname");
		String proposer=request.getParameter("proposer");
		String reason=request.getParameter("reason");
		int amount=Integer.parseInt(request.getParameter("amount"));
		String projecttype=request.getParameter("projecttype");
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dd=df.format(new Date());
		Faqixiangmu ff=new Faqixiangmu();
		ff.setEntryname(entryname);
		ff.setProposer(proposer);
		ff.setReason(reason);
		ff.setAmount(amount);
		ff.setProjecttype(projecttype);
		ff.setTime(dd);
		Shixian ss=new Shixian();
		ss.addproject(ff);
		//System.out.println(ff.getEntryname()+ff.getReason()+ff.getTime());
		//request.getRequestDispatcher("bootstrap/success.jsp").forward(request, response);
		return "ok";
	}
	/*
	 * ����Ŀ��Ŀ��������ݿ��ó�����ʾ����̨��˽���
	 */
	public String Reviewprojectservlet(){
		HttpServletRequest request=ServletActionContext.getRequest();
		//HttpServletResponse response=ServletActionContext.getResponse();
		//HttpSession session=request.getSession();
		try{
			request.setCharacterEncoding("utf-8");

			Shixian ss=new Shixian();
			List<Reviewproject> listr=ss.queryprogect();
			System.out.println("listrde changdu"+listr.size());
			request.setAttribute("list", listr);
			System.out.println("tupian"+listr.get(0).getLogo()+"     lujing"+listr.get(0).getLujing());
			//session.setAttribute("list", listr);
			//	System.out.println("listrdesize:"+listr.size());
			/*request.setAttribute("list", listr);
		request.getRequestDispatcher("publicProgram.jsp").forward(request, response);*/
		}catch(Exception e){
			System.out.println(e.getMessage()+"Reviewprojectservlet");
		}
		return "rs";
	}
	/*
	 * ����˵�����ͽ�����µ����ݿ�  �������ݿ�����һ��δ��˵���Ŀ��ʾ����˽���
	 */
	public String Projectreviewservlet(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		try{
			request.setCharacterEncoding("utf-8");
		}catch(Exception e){
			System.out.println(e.getMessage()+"Projectreviewservlet");
		}
		Shixian ss=new Shixian();
		List<Reviewproject> listr=ss.queryprogect();
		if(listr.size()==0){
			String st="û����Ŀ�����";
			request.setAttribute("st", st);
			return "none";
		}else{
			int id=listr.get(0).getId();
			String status=request.getParameter("opinion");
			//String shenherenname=request.getParameter("personname");
			String jianyi=request.getParameter("jianyi");
			double  money=Double.parseDouble(request.getParameter("money"));
			if(jianyi.equals(null)){
				request.setAttribute("aaa", "��д����Ŀ��˵Ľ���");
				return "jianyi";
			}
			String name=(String)session.getAttribute("name");
			String shenherenname=ss.queryhtzhname(name);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String shdate=sdf.format(new Date());
			Idea idea=new Idea();
			idea.setId(id);
			idea.setShdate(shdate);
			idea.setJianyi(jianyi);
			idea.setShenherenname(shenherenname);
			idea.setStatus(status);
			Idea ide=new Idea();
			ide.setId(id);
			ide.setStatus(status);
			Idea ii=new Idea();
			ii.setId(id);
			ii.setMoney(money);
			Shixian shi=new Shixian();
			shi.updateproject(idea);
			shi.updateprojectstatus(ide);
			shi.updateshenhe(ide);
			shi.updatemoney(ii);
			return "review1";
		}
	}
	/*
	 * �û���ѯ�Լ��������Ŀ
	 */
	public String Qiantaiwodeproject(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		try{
			request.setCharacterEncoding("utf-8");
		}catch(Exception e){
			System.out.println(e.getMessage()+"Qiantaiwodeproject");
		}
		Person p=new Person();
		String name=(String)session.getAttribute("name");
		p.setZhenming(name);
		System.out.println(name+"Qiantaiwodeproject");
		Shixian ss=new Shixian();
		List<Faqixiangmu>listw=ss.queryqiantaiwodeprogect(p);
		request.setAttribute("list", listw);
		//request.getRequestDispatcher("myxiangmu.jsp").forward(request, response);

		return "wode";
	}
	/*���û�����sessionattribute ����һ��action����õ�
	 * 
	 */
	public String wode(){
		HttpServletRequest request=ServletActionContext.getRequest();
		//HttpServletResponse response=ServletActionContext.getResponse();
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		try{
			System.out.println(username+"ss");
			session.setAttribute("name",username);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return "haha";
	}
	/*
	 *�����˾�Ŀ���뵽���ݿ�
	 */
	public String addjuankuan(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		Shixian shi=new Shixian();
		String zhname=shi.queryusername(name);
		//String projectname=request.getParameter("");
		int projectname=1;
		int money=Integer.parseInt(request.getParameter("money"));
		SimpleDateFormat ff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String donationtime=ff.format(new Date());
		Donation dd=new Donation();
		dd.setDonationtime(donationtime);
		dd.setMoney(money);
		dd.setProjectname(projectname);
		dd.setZhname(zhname);
		shi.adddonation(dd);
		//System.out.println(name);
		//String name=session.getAttribute("name");
		//System.out.println(name);
		return "add";
	}
	/*
	 * �ѱ��˾�Ŀ���ʾ���������ȷ��
	 */
	public String finanaceconfirm(){
		HttpServletRequest request=ServletActionContext.getRequest();
		Shixian ss=new Shixian();
		List<Donation> listd=ss.querydonation();
		request.setAttribute("list",listd);
		return "firm";
	}
	/**
	 * ȷ�Ͼ��
	 * @return
	 */
	/*public String income(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		//String name=(String)session.getAttribute("name");//���ݺ�̨��¼���û���
		String name="mingge";

		Shixian ss=new Shixian();
		List<Donation> listd=ss.querydonation();
		String incomename=ss.queryhtzhname(name);//����Ա������ʵ����
		System.out.println(incomename);
		String status="�ѵ���";
		Donation dd=new Donation ();
		SimpleDateFormat ff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String asd=ff.format(new Date());
		dd.setDonationtime(asd);
		dd.setID(listd.get(0).getID());
		dd.setIncomename(listd.get(0).getZhname());//����Ǯ���û�����
		dd.setMoney(listd.get(0).getMoney());
		dd.setProjectname(listd.get(0).getProjectname());
		dd.setStatus(status);
		dd.setZhname(incomename);//����Ա�����˺�
		ss.addincome(dd);
		System.out.println("qwer");
		return "income";

	}*/
	public String income(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		String name=(String)session.getAttribute("name");//���ݺ�̨��¼���û���
		Shixian ss=new Shixian();
		List<Donation> listd=ss.querydonation();
		String incomename=ss.queryhtzhname(name);//����Ա������ʵ����
		System.out.println(incomename);
		String status="�ѵ���";
		Donation dd=new Donation ();
		SimpleDateFormat ff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String asd=ff.format(new Date());
		dd.setDonationtime(asd);
		dd.setID(listd.get(0).getID());
		dd.setIncomename(listd.get(0).getZhname());//����Ǯ���û�����
		dd.setMoney(listd.get(0).getMoney());
		dd.setProjectname(listd.get(0).getProjectname());
		dd.setStatus(status);
		dd.setZhname(incomename);//����Ա������ʵ����
		ss.addincome(dd);
		return "income";

	}
}
