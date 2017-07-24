package com.SZHlssh;

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
	 * @return
	 * @throws Exception
	 */
	public String fenye1() throws Exception{
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
		request.getRequestDispatcher("/bootstrap/lishixiangmu.jsp").forward(request, response);

		int total=dd.getCount();
		session.setAttribute("total", total);
		return "fenyeen";
	}

	/**
	 * 将项目详情及审核意见插入到理事项目审核表并更新项目审核表状态
	 * @return
	 */
	public String Faqiservlet(){
		HttpServletRequest request=ServletActionContext.getRequest();
		try{
			request.setCharacterEncoding("utf-8");
		}catch(Exception e){

		}

		int sh_id=Integer.parseInt(request.getParameter("sh_id"));
		int sh_xm_id=Integer.parseInt(request.getParameter("sh_xm_id"));
		String sh_states=request.getParameter("sh_states");
		String sh_shname=request.getParameter("sh_shname");
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dd=df.format(new Date());
		String sh_jianyi = request.getParameter("sh_jianyi");
		String xm_person=request.getParameter("xm_person");
		String xm_states=request.getParameter("xm_states");
		String note = request.getParameter("note");
		System.out.println("id   "+sh_xm_id+"note  "+note+"xm_states"+xm_states);
		lsxm ff=new lsxm();
		ff.setSh_id(sh_id);
		ff.setSh_xm_id(sh_xm_id);
		ff.setSh_states(sh_states);
		ff.setSh_shname(sh_shname);
		ff.setSh_date(dd);
		ff.setSh_jianyi(sh_jianyi);
		ff.setXm_person(xm_person);
		ff.setXm_states(xm_states);
		ff.setNote(note);
		DaoImpl ss=new DaoImpl();
		ss.addproject(ff);
		ss.update(ff);
		ss.updatestate(sh_xm_id, "已审核");
		//System.out.println(ff.getEntryname()+ff.getReason()+ff.getTime());
		//request.getRequestDispatcher("bootstrap/success.jsp").forward(request, response);
		return "haoen";
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
