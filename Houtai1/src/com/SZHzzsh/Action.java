package com.SZHzzsh;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class Action {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	HttpServletResponse response = ServletActionContext.getResponse();
	Dao dd=new DaoImpl();
	xmsq xo=new xmsq();
	/**
	 * 分页查询
	 */
	public String fenye() throws Exception{
		fenyeService ct=new fenyeService();
		String currPageStr=request.getParameter("currPage");
		String pageSizeStr=request.getParameter("pageSize");
		Integer currPage=null;
		Integer pageSize=null;
		try{
			currPage=Integer.parseInt(currPageStr);
			pageSize=Integer.parseInt(pageSizeStr);
		}
		catch(Exception e){

		}
		util util=ct.select(currPage, pageSize);
		request.setAttribute("List", util);
		request.getRequestDispatcher("/bootstrap/lishibiao1111.jsp").forward(request, response);
		int total=dd.getCount();
		session.setAttribute("total", total);
		return "fenye";
	}
	
	/**
	 * 将项目详情及审核意见插入到理事项目审核表并更新项目审核表状态
	 */
	public String Faqiservlet(){
		HttpServletRequest request=ServletActionContext.getRequest();
		try{
			request.setCharacterEncoding("utf-8");
		}catch(Exception e){

		}
		int id=Integer.parseInt(request.getParameter("id"));
		int xm_name=Integer.parseInt(request.getParameter("xm_name"));
		String sh_status=request.getParameter("sh_status");
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dd=df.format(new Date());
		//String sh_time=request.getParameter("sh_time");
		String sh_reasons=request.getParameter("sh_reasons");
		String sh_person=request.getParameter("sh_person");
		String ls_status=request.getParameter("ls_status");
		String lz_person1=request.getParameter("lz_person1");
		String note = request.getParameter("note");
		String sh_money= request.getParameter("sh_money");
		int moneym=Integer.parseInt(request.getParameter("moneym"));
		int yimoney=Integer.parseInt(request.getParameter("yimoney"));
		System.out.println(moneym+"moneymasdasdasd ");
		zijin ff=new zijin();
		ff.setId(id);
		ff.setXm_name(xm_name);
		ff.setSh_status(sh_status);
		ff.setSh_time(dd);
		ff.setSh_reasons(sh_reasons);
		ff.setSh_person(sh_person);
		//ff.setGf_staute(gf_staute);
		ff.setLs_status(ls_status);
		ff.setLz_person1(lz_person1);
		ff.setNote(note);
		ff.setSh_money(sh_money);
		ff.setMoneym(moneym);
		ff.setYimoney(yimoney);
	
		DaoImpl ss=new DaoImpl();
		ss.addproject(ff);
		ss.update(ff);
		return "hao";
	}
	/**
	 * 根据ID查询项目申请表数据
	 */
	private String id;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	/**
	 * 拼接字符串的形式把数据显示到模态框
	 */
	public void Select(){	
		System.out.println(getId());
		xo.setAsk_id(Integer.parseInt(getId()));
		List<xmsq> ls=dd.select(xo);
		xmsq aa=ls.get(0);
		String str=aa.getAsk_id()+","+aa.getAsk_name()+","+aa.getAsk_sqname()+","+aa.getAsk_reason()+","+aa.getAsk_money()+","+aa.getAsk_type()+","
				+aa.getAsk_time()+","+aa.getAsk_status()+","+aa.getShenhe_money();
		 response.setHeader("Content-type", "text/html;charset=UTF-8");
		  response.setContentType("text/html;charset=utf-8");	
				
		try {
			response.getWriter().print(str);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
