package com.YXcexpend;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.YXexpend.entity.Apply;
import com.YXexpend.entity.Expend;
import com.YXexpend.entity.Jijin;
import com.YXexpend.entity.PP;
import com.YXexpend.entity.Xm;
import com.opensymphony.xwork2.ActionSupport;

public class Action extends ActionSupport{
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();

	ZhiChu z=new ZhiChu();
	Apply a=new Apply();
	QQ q;
	PP p;

	public QQ getQ() {
		return q;
	}
	public void setQ(QQ q) {
		this.q = q;
	}
	public PP getP() {
		return p;
	}
	public void setP(PP p) {
		this.p = p;
	}
	/**
	 * ��ѯ����֧���б�
	 * @return
	 */
	public  String chaxun(){
		Dao dao=new DaoImpl();
		List<ZhiChu>lz=dao.query();
		session.setAttribute("list",lz );
		//��ѯ֧���ܽ��
		int money=dao.summoney();
		session.setAttribute("money", money);
		return "cha";
	}
	/**
	 *��ʾʣ���� 
	 */
	public String mon(){
		Dao dd=new DaoImpl();
		int mone=dd.smoney();
		session.setAttribute("hao", mone);
		return "sheng";
	}
	
	/**
	 * ��ѯ����֧��
	 * @return
	 */
	public String query(){
		/*z.setExpend_name(p.getExpend_name());*/
		z.setExpend_name(p.getExpend_name());
		Dao dd=new DaoImpl();
		List<ZhiChu>lb=dd.query1(z);
		session.setAttribute("dan",lb );
		return "chadan";
	}
	/*/��ѯ֧���ܽ��
	public String money(){
		Dao dd=new DaoImpl();

		return "mm";
	}*/
	/**
	 * ��ѯ�����б�
	 * @return
	 */
	public String shen(){
		System.out.println("1");
		Dao dd=new DaoImpl();
		List<Apply> lp=dd.query2();
		session.setAttribute("shen",lp );
		return "ss";
	}

	/**
	 * ������ѯ����
	 * @return
	 */
	public String cha(){

		//a.setEx_name(q.getEx_name());
		a.setEx_person(q.getEx_person());
		Dao dd=new DaoImpl();
		List<Apply>ly=dd.query3(a);
		session.setAttribute("adc",ly);
		return "pp";
	}
	/**
	 * ɾ��ĳ��֧������
	 * @return
	 */
	public String delete(){
		Expend dd=new Expend();
		Dao dao=new DaoImpl();
		int a=Integer.parseInt(request.getParameter("a"));
		dd.setExpend_askid(a);
		dao.deleteexpend(dd);
		List<ZhiChu>lz=dao.query();
		session.setAttribute("de", lz);
		return "delet";
	}

	/**
	 * ��������״̬
	 * @return
	 */
	public String updateOne(){
		System.out.println("����action");
		Dao dd=new DaoImpl();
		List<Apply> lp=dd.query2();
		int id=lp.get(0).getEx_id();
		int xm_name=lp.get(0).getEx_name();
		//String lishi=request.getParameter("ls_status");
		String status=request.getParameter("opinion");
		SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
		String shijian=sd.format(new Date());
		String reason=request.getParameter("reason");
		String name=(String)session.getAttribute("name");
		String aa=	dd.personname(name);
		int money=Integer.parseInt(request.getParameter("money"));
		int ex_money=lp.get(0).getEx_money();


		Jijin j=new Jijin();
		j.setId(id);
		j.setXm_name(xm_name);
		j.setSh_status(status);
		j.setSh_time(shijian);
		j.setSh_reasons(reason);
		j.setSh_person(aa);
		j.setSh_money(ex_money);
		
		//j.setLs_status(lishi);
		dd.updatesh(j);
		Jijin jj=new Jijin();
		jj.setId(id);
		jj.setXm_name(xm_name);
		jj.setSh_status(status);
		jj.setSh_time(shijian);
		jj.setSh_reasons(reason);
		jj.setSh_person(aa);
		//jj.setLs_status(lishi);
		jj.setSh_money(ex_money);
		jj.setMoney(money);
		dd.addstatus(jj);
		return "st";
	}

	/**
	 * ��ʾ��Ҫ�ſ����Ŀ
	 * @return
	 */
	public String fang(){
		Dao dd=new DaoImpl();
		List<Zhi>listzhi=dd.zz();
		if(0>=listzhi.size()){
			request.setAttribute("li","��ǰû�пɷ��ŵ���Ŀ�ʽ�");
			return "abc";
		}else{
			System.out.println(listzhi.size()+"yanxin"+listzhi.get(0).getId());
			request.setAttribute("zhi", listzhi);
			return "qian";
		}
	}
	/**
	 * ����֧����
	 * @return
	 */
	public String charu(){
		
		Dao dd=new DaoImpl();
		List<Zhi>listzhi=dd.zz();
		int id=listzhi.get(0).getId();
		int name=listzhi.get(0).getName();
		int money=Integer.parseInt(request.getParameter("money"));
		SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
		String shijian=sd.format(new Date());

		String person=(String)session.getAttribute("name");
		String aa=dd.personname(person);
		String status="�ѷ���";
		int idd=Integer.parseInt(request.getParameter("id"));
		ZhiChu zhi=new ZhiChu();
		zhi.setExpend_askid(id);
		zhi.setExpend_name(name);
		zhi.setExpend_money(money);
		zhi.setExpend_time(shijian);
		zhi.setExpend_perspon(aa);
		zhi.setExpend_status(status);
		dd.addzhichu(zhi);
		//System.out.println("id"+id+"   name  "+  name);
		dd.updatelzstatus(idd, status);
		int projectid =Integer.parseInt(request.getParameter("dd"));
		int money1=dd.queryjuanmoney(projectid);
		int money2=dd.queryshenpi(projectid);
		int count=money1-money2;
		dd.updateshengxia(count, projectid);
		System.out.println(idd+" "+projectid+"qwe");
		return "zhi";
	}


	/**
	 * ��ѯ������֤��Ϣ
	 * @return
	 */
	public String geren(){
		System.out.println("yyyyy");
		Dao dd=new DaoImpl();
		List<Ren> rrr=dd.rr();
		session.setAttribute("ren", rrr);
		return "ge";
	}
	/**
	 * ���������֤
	 * @return
	 */
	public String ge(){

		return null;
	}

	/**
	 * ������֤״̬
	 * @return
	 */
	public String updateren(){
		System.out.println("��ʼ����");
		Dao dd=new DaoImpl();
		List<Ren>rr=dd.rr();
		int id=rr.get(0).getId();
		String username=request.getParameter("username");
		String zhenname=request.getParameter("zhenname");
		String idcard=request.getParameter("idcard");
		String dizhi=request.getParameter("dizhi");
		String gongzuo=request.getParameter("gongzuo");
		String phone=request.getParameter("phone");
		String jie=request.getParameter("jieshao");
		String status=request.getParameter("opinion");
		String name=(String)session.getAttribute("name");
		String aa=dd.personname(name);
		Ren r=new Ren();
		r.setId(id);
		r.setUsername(username);
		r.setZhenname(zhenname);
		r.setIdcard(idcard);
		r.setDizhi(dizhi);
		r.setGongzuo(gongzuo);
		r.setPhone(phone);
		r.setJieshao(jie);
		r.setNstatus(status);
		r.setShenname(aa);
		dd.update(r);
		Ren ee=new Ren();
		ee.setId(id);
		ee.setUsername(username);
		ee.setZhenname(zhenname);
		ee.setIdcard(idcard);
		ee.setDizhi(dizhi);
		ee.setGongzuo(gongzuo);
		ee.setPhone(phone);
		ee.setJieshao(jie);
		ee.setNstatus(status);
		ee.setShenname(aa);
		System.out.println("��ʼ����");
		dd.addren(ee);
		System.out.println("���");
		return "renren";

	}
	/**
	 * ������Ŀid��ѯ��Ŀ���������
	 */

	public String selectTT(){
		String id=request.getParameter("id");
		System.out.println(id);
		Xm xxx=new Xm();
		xxx.setAsk_id(Integer.parseInt(request.getParameter("id")));
		Dao dd=new DaoImpl();
		List<Xm>list=dd.chaxun(xxx);
		session.setAttribute("xxxx", list);
		return "oo";
	}
	/*
	 * ǰ̨
	 */
	int jin;
	public String jisuan(){
		
		HttpServletResponse response=ServletActionContext.getResponse();

		DaoImpl dd=new DaoImpl();
		int	money=dd.queryjuanmoney(jin);
		int zhichu=dd.queryshenpi(jin);
		int shengxia=money-zhichu;
		dd.updateshengxia(shengxia, jin);
		try{
			response.getWriter().write(shengxia);
		}catch(Exception e){
			System.out.println(e.getMessage()+"jisuan");
		}
		return "suan";
	}
	
}
