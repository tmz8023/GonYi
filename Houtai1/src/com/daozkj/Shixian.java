package com.daozkj;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.factoryzkj.Factory;
import com.faqixiangmuzkj.Faqixiangmu;
import com.reviewprojectzkj.Reviewproject;

public class Shixian implements Dao{

		/*
		 * 往数据库中插入新的注册用户
		 * @see com.dao.Dao#adduser(com.user.User)
		 */
		/*public void adduser(User uu){
			String sql="insert into user1 values(?,?,?)";
			Object[] obj=new Object[]{uu.getUsername(),uu.getPassword(),uu.getIdcard()};
			Factory.executeupdate(sql, obj);
		}*/
		/*
		 * 登录的时候验证用户是否存在和密码
		 * (non-Javadoc)
		 * @see com.dao.Dao#loginpass(com.login.Login)
		 */
		/*public String  loginpass(Login ll){
			String sql="select password from user1 where username=?";
			Object[] obj=new Object[]{ll.getName()};
			ResultSet re=Factory.executequery(sql, obj);
			String ss=null;
			try{
			re.next();
			ss=re.getString(1);
			}catch(Exception e){
				System.out.println(e.getLocalizedMessage()+"ww");
			}
			return ss;
		}*/
		/*
		 * 申请的项目添加到数据库中
		 * (non-Javadoc)
		 * @see com.dao.Dao#addproject(com.faqixiangmu.Faqixiangmu)
		 */
		public void addproject(Faqixiangmu ff){
			String sql="insert into Xmshenqing (ask_name,ask_sqname,ask_reason,ask_money,ask_type,ask_time) values(?,?,?,?,?,?)";
			Object[] obj=new Object[]{ff.getEntryname(),ff.getProposer(),ff.getReason(),Integer.toString(ff.getAmount()),ff.getProjecttype(),ff.getTime()};
			Factory.executeupdate(sql,obj);
		}
		/*向publicProgram.jsp中显示要审核的项目
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryprogect()
		 */
		public List<Reviewproject> queryprogect(){
			String sql="select  top 1  xm.ask_id,xm.ask_name,xm.ask_reason,xm.ask_money,xm.ask_time,jg.jigouquancheng,jg.dianhua,jg.xingzhi,jg.founddate,jg.faren,jg.idcard,jg.jigoujianjie,jg.logo,xm.lujing from Xmshenqing xm , Jgrenzheng jg where ask_id not in(select sh_xm_id from Shenhe) and xm.ask_sqname=jg.addresss";
			ResultSet re=Factory.executequery(sql,null);
			List<Reviewproject> listr=new ArrayList<Reviewproject>();

			try{ 
				while(re.next()){
					
					Reviewproject rp=new Reviewproject();
					rp.setId(re.getInt(1));
					rp.setProjectname(re.getString(2));
					rp.setReason(re.getString(3));
					rp.setAmount(re.getString(4));
					rp.setTime(re.getString(5));
					rp.setJigouquancheng(re.getString(6));
					rp.setDianhua(re.getString(7));
					rp.setXingzhi(re.getString(8));
					rp.setFounddate(re.getString(9));
					rp.setFaren(re.getString(10));
					rp.setIdcard(re.getString(11));
					rp.setJigoujianjie(re.getString(12));
					rp.setLogo(re.getString(13));
					rp.setLujing(re.getString(14));
					listr.add(rp);
					
				}
				System.out.println(listr.size()+"listr:");
				return listr;
			}catch(Exception e){
				System.out.println(e.getMessage()+"w");
			}
			return null;		
			}
		/*往数据库中插入专项基金
		 * (non-Javadoc)
		 * @see com.dao.Dao#addapplyjijin(com.dao.Found)
		 */
		public void addapplyjijin(Found ff){
			String sql="insert into Zcshenqing (expend_time,expend_company,expend_reason,expend_money,expend_person) values(?,?,?,?,?)";
			Object[] obj=new Object[]{ff.getDatetime(),ff.getApplicantcompany(),ff.getApplyreason(),ff.getAmount(),ff.getApplicant()};
			Factory.executeupdate(sql, obj);
		}
		/*查询专项基金审核的详情向审核页面显示
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryFound()
		 */
		public List<Found> queryFound(){
			String sql="select top 1 id,expend_time,expend_company,expend_reason,expend_money from Zcshenqing where id not in (select expend_id from Jjshenhe)";
			ResultSet re=Factory.executequery(sql, null);
			List<Found> listf=new ArrayList<Found>();

			try{
				while(re.next()){
					Found ff=new Found ();
					ff.setId(re.getInt(1));
					ff.setDatetime(re.getString(2));
					ff.setApplicantcompany(re.getString(3));
					ff.setApplyreason(re.getString(4));
					ff.setAmount(re.getString(5));
					listf.add(ff);
				}

				return listf;
			}catch(Exception e){
				System.out.println(e.getMessage()+"found");
			} 
			return null;
		}
		/**
		 * 专项基金的审批结果录入数据库
		 * 
		 */
		public void updatejijin(Opinion oo){
			String sql="insert into Jjshenhe (aduit_person,aduit_ask,expend_id) values (?,?,?)";
			Object[] obj=new Object[]{oo.getPersonname(),oo.getOpinion(),oo.getId()};
			System.out.println("opinion:"+oo.getOpinion());
			Factory.executeupdate(sql, obj);
		}
		/*查询项目详情 向前台我的项目界面显示
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryqiantaiwodeprogect()
		 */
		public List<Faqixiangmu> queryqiantaiwodeprogect(Person p){
			String sql="select xm.ask_id,xm.ask_time,xm.ask_name,ask_status from Xmshenqing xm and  ask_sqname=?";
			Object[] obj=new Object[]{p.getZhenming()};
			List<Faqixiangmu> listw=new ArrayList<Faqixiangmu>();
			ResultSet re=Factory.executequery(sql, obj);
			try{
			while(re.next()){
				Faqixiangmu ff=new Faqixiangmu();
				ff.setId(re.getInt(1));
				ff.setTime(re.getString(2));
				ff.setEntryname(re.getString(3));
				ff.setStatus(re.getString(4));
				listw.add(ff);
			}
			re.close();
			return listw;
			}catch(Exception e){
				System.out.println(e.getMessage()+"queryqiantaiwodeprogect");
			}
			return listw;
		}
		/*项目审核的结果 插入到数据库
		 * (non-Javadoc)
		 * @see com.dao.Dao#updateproject(com.dao.Idea)
		 */
		public void updateproject(Idea idea){
			String sql="insert into Shenhe(sh_xm_id,sh_states,sh_shname,sh_date,sh_jianyi) values (?,?,?,?,?)";
			Object[] obj=new Object[]{idea.getId(),idea.getStatus(),idea.getShenherenname(),idea.getShdate(),idea.getJianyi()};
			Factory.executeupdate(sql, obj);
		}
		/*更新项目申请表里面的申请状态
		 * (non-Javadoc)
		 * @see com.dao.Dao#updateprojectstatus(com.dao.Idea)
		 */
		public void updateprojectstatus(Idea ide){
			String sql="update Xmshenqing set ask_status=? where ask_id=?";
			Object[] obj =new Object[]{ide.getStatus(),ide.getId()};
			Factory.executeupdate(sql, obj);
		}
		public void updateshenhe(Idea id){
			String sql="update Shenhe set sh_states=? where sh_xm_id=?";
			Object[] obj=new Object[]{id.getStatus(),id.getId()};
			Factory.executeupdate(sql, obj);
		}
		public void updatemoney(Idea id){
			String sql=" update Xmshenqing set shenhe_money=? where ask_id=? ";
			Object[] obj=new Object[]{id.getMoney(),id.getId()};
			Factory.executeupdate(sql, obj);
		}
		/*根据用户名查找用户的真实姓名
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryusername(java.lang.String)
		 */
		public String queryusername(String name){
			String sql="select enroll_sname from Zhuce where enroll_name=?";
			Object[] obj=new Object[]{name};
			ResultSet re=Factory.executequery(sql, obj);
			try{
			re.next();
			String zsname=re.getString(1);
			return zsname;
			}catch(Exception e){
				System.out.println(e.getMessage()+"queryusername");
			}
			return null;
		}
		/*
		 * 把前台我捐的钱录入到数据库中
		 */
		public void adddonation(Donation dd){
			String sql="insert into Juankuan values (?,?,?,?)";
			Object[] obj=new Object[]{dd.getZhname(),dd.getProjectname(),dd.getMoney(),dd.getDonationtime()};
			Factory.executeupdate(sql, obj);
		}
		/*
		 * 把数据库中的捐款信息显示到后台财务确认界面
		 */
		public List<Donation > querydonation(){
			String sql="select top 1 * from Juankuan where gift_id not in (select gif_id from Shouru )";
			ResultSet re=Factory.executequery(sql, null);
			List<Donation> listd=new ArrayList<Donation>();
			try{
			while(re.next()){
				Donation dd=new Donation();
				dd.setID(re.getInt(1));
				dd.setZhname(re.getString(2));
				dd.setProjectname(re.getInt(3));
				dd.setMoney(re.getInt(4));
				dd.setDonationtime(re.getString(5));
				listd.add(dd);
			}
			return listd;
			}catch(Exception e){
				
			}
			return null;
		}
		/*把财务部确认过的捐款信息插入到数据库中income表
		 * (non-Javadoc)
		 * @see com.dao.Dao#addincome(com.dao.Donation)
		 */
		public void addincome(Donation dd){
			String sql="insert into Shouru values(?,?,?,?,?,?,?)";
			Object[] obj=new Object[]{dd.getIncomename(),dd.getProjectname(),dd.getMoney(),dd.getDonationtime(),dd.getStatus(),dd.getZhname(),dd.getID()};
			Factory.executeupdate(sql, obj);
		}
		/*根据后台登录的员工用户名得到真实姓名
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryhtzhname(java.lang.String)
		 */
		public String queryhtzhname(String name){
			String sql="select sf_name from Yuangong where  sf_username=?";
			Object[] obj=new Object[]{name};
			ResultSet re=Factory.executequery(sql, obj);
			try{
			re.next();
			String sf=re.getString(1);
			return sf;
			}catch(Exception e){
				System.out.println(e.getMessage()+"queryhtzhname");
			}
			return null;
		}

		
		
	}

	


