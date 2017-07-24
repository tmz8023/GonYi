package com.YXitem;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ZKJdao.Shixian;



public class Action {
	
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	/**
	 * 获取前台支出申请数据插入数据库
	 */
		public String addzhichu(){
			System.out.println("pp");
			Xiang xx=new Xiang();
			xx.setEx_name(request.getParameter("ex_name"));
			SimpleDateFormat ff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String ex_time=ff.format(new Date());
			//String name=(String)session.getAttribute("name");
			xx.setEx_time(ex_time);
			//xx.setEx_time(request.getParameter("ex_time"));
			xx.setEx_company(request.getParameter("ex_company"));
			xx.setEx_reason(request.getParameter("ex_reason"));
			xx.setEx_money(request.getParameter("ex_money"));
			//xx.setEx_person(request.getParameter("ex_person"));
			//xx.setEx_person(name);
			Shixian ss=new Shixian();
			HttpSession session=ServletActionContext.getRequest().getSession();
			String name=(String)session.getAttribute("name");
			String zhname=ss.queryusername(name);
			xx.setEx_person(zhname);
			Dao dao=new DaoImpl();
			dao.addsq(xx);
			return "jia";
		}
		/**
		 * 个人认证
		 * @return
		 */
		public String addYh(){
			DaoImpl dd=new DaoImpl();
			Ren r=new Ren();
			String username=(String)session.getAttribute("name");
			String zhenname=request.getParameter("zhenname");
			String idcard=request.getParameter("idcard");
			String dizhi=request.getParameter("dizhi");
			String gongzuo=request.getParameter("gongzuo");
			String phone=request.getParameter("phone");
			String jieshao=request.getParameter("jieshao");
			
			
			r.setUsername(username);
			r.setZhenname(zhenname);
			r.setIdcard(idcard);
			r.setDizhi(dizhi);
			r.setGongzuo(gongzuo);
			r.setPhone(phone);
			r.setJieshao(jieshao);
			
			dd.addgeren(r);
			return "yh";
		}
		/**
		 * 显示可用金额
		 */
		public String jine(){
			Dao dd=new DaoImpl();
			String name=request.getParameter("jin");	
			String na=dd.sumoney(name);
			session.setAttribute("jin", na);
			return null;
		}
		/**
		 * 显示个人申请资金的信息
		 */
		public String zhi(){
			Dao dao=new DaoImpl();
		
			String name=(String)session.getAttribute("name");
			List<ZhiChu>lz=dao.query(name);
			session.setAttribute("zhi", lz);
			return "qian";
		}
		/**
		 * 显示剩余金额
		 * @return
		 */
		public String jisuan(){
			HttpServletRequest request=ServletActionContext.getRequest();
			HttpServletResponse response=ServletActionContext.getResponse();
			int jin=Integer.parseInt(request.getParameter("jin"));
			DaoImpl dd=new DaoImpl();
			System.out.println(jin+"jin");
			int	money=dd.queryjuanmoney(jin);
			System.out.println("money"+money);
			int zhichu=dd.queryshenpi(jin);
			System.out.println("zhichu"+zhichu);
			int shengxia=money-zhichu;
			dd.updateshengxia(shengxia, jin);
			System.out.println("剩下的钱"+shengxia);
			try{
				response.getWriter().write(shengxia+"");
			}catch(Exception e){
				System.out.println(e.getMessage()+"jisuan");
			}
			return null;
		}
}
