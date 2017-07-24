package com.ZKJdao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.factoryzkj.Factory;
import com.reviewprojectzkj.Reviewproject;

public class Shixian implements Dao{

		/*
		 * �����ݿ��в����µ�ע���û�
		 * @see com.dao.Dao#adduser(com.user.User)
		 */
		/*public void adduser(User uu){
			String sql="insert into user1 values(?,?,?)";
			Object[] obj=new Object[]{uu.getUsername(),uu.getPassword(),uu.getIdcard()};
			Factory.executeupdate(sql, obj);
		}*/
		/*
		 * ��¼��ʱ����֤�û��Ƿ���ں�����
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
		/*�����û���������Ŀ������
		 * (non-Javadoc)
		 * @see com.daozkj.Dao#queryprojectapplycant(java.lang.String)
		 */
		public String queryprojectapplycant(String username){
			String sql="select enroll_sname from Yonghu where enroll_name=?";
			Object[] obj=new Object[]{username};
			ResultSet re=Factory.executequery(sql, obj);
			try{
			re.next();
			String zhenname=re.getString(1);
			return zhenname;
			}catch(Exception e){
				System.out.println(e.getMessage()+"queryprojectapplycant");
			}
			return null;
		}
	
	
		/*
		 * �������Ŀ��ӵ����ݿ���
		 * (non-Javadoc)
		 * @see com.dao.Dao#addproject(com.faqixiangmu.Faqixiangmu)
		 */
		public void addproject(Faqixiangmu ff){
			String sql="insert into Xmshenqing (ask_name,ask_sqname,ask_reason,ask_money,ask_type,ask_time,ask_finals,lujing) values(?,?,?,?,?,?,?,?)";
			Object[] obj=new Object[]{ff.getEntryname(),ff.getProposer(),ff.getReason(),Integer.toString(ff.getAmount()),ff.getProjecttype(),ff.getTime(),ff.getFinals(),ff.getLujing()};
			Factory.executeupdate(sql,obj);
		}
		/*��publicProgram.jsp����ʾҪ��˵���Ŀ
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryprogect()
		 */
		public List<Reviewproject> queryprogect(){
			String sql="select  top 1 ask_id,ask_name,ask_reason,ask_money,ask_time from Xmshenqing where ask_id not in(select sh_xm_id from Shenhe)";
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
					listr.add(rp);
					
				}
				System.out.println(listr.size()+"listr:");
				return listr;
			}catch(Exception e){
				System.out.println(e.getMessage()+"w");
			}
			return null;
		}
		/*�����ݿ��в���ר�����
		 * (non-Javadoc)
		 * @see com.dao.Dao#addapplyjijin(com.dao.Found)
		 */
		public void addapplyjijin(Found ff){
			String sql="insert into Zcshenqing (expend_time,expend_company,expend_reason,expend_money,expend_person) values(?,?,?,?,?)";
			Object[] obj=new Object[]{ff.getDatetime(),ff.getApplicantcompany(),ff.getApplyreason(),ff.getAmount(),ff.getApplicant()};
			Factory.executeupdate(sql, obj);
		}
		/*��ѯר�������˵����������ҳ����ʾ
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
		 * ר�������������¼�����ݿ�
		 * 
		 */
		public void updatejijin(Opinion oo){
			String sql="insert into Jjshenhe (aduit_person,aduit_ask,expend_id) values (?,?,?)";
			Object[] obj=new Object[]{oo.getPersonname(),oo.getOpinion(),oo.getId()};
			System.out.println("opinion:"+oo.getOpinion());
			Factory.executeupdate(sql, obj);
		}
		/*��ѯ��Ŀ���� ��ǰ̨�ҵ���Ŀ������ʾ
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryqiantaiwodeprogect()
		 */
		public List<Faqixiangmu> queryqiantaiwodeprogect(Person p){
			//String sql="select xm.ask_id,xm.ask_time,xm.ask_name,shenhe.sh_states,shenhe.sh_jianyi from Xmshenqing xm,Shenhe  where xm.ask_id=Shenhe.sh_xm_id and ask_sqname=? union select ask_id,ask_time ,ask_name,ask_status,ask_jianyi  from Xmshenqing where ask_status='�����' and  ask_sqname=?";
			String sql="select xm.ask_id,xm.ask_time,xm.ask_name,shenhe.sh_states,shenhe.sh_jianyi,lsxm.xm_states,lsxm.note from Xmshenqing xm,Shenhe,lsxm  where xm.ask_id=Shenhe.sh_xm_id and lsxm.sh_xm_id=xm.ask_id and lsxm.sh_xm_id=Shenhe.sh_xm_id and xm.ask_sqname=? union select ask_id,ask_time ,ask_name,ask_status,ask_jianyi,jianyi,states  from Xmshenqing where ask_status='�����' and  ask_sqname=? union select xm.ask_id,xm.ask_time,xm.ask_name,shenhe.sh_states,shenhe.sh_jianyi,xm.jianyi,xm.states  from Xmshenqing xm,Shenhe  where xm.ask_id=Shenhe.sh_xm_id and ask_sqname=? and xm.abd='δ���'";
			Object[] obj=new Object[]{p.getZhenming(),p.getZhenming(),p.getZhenming()};
			List<Faqixiangmu> listw=new ArrayList<Faqixiangmu>();
			ResultSet re=Factory.executequery(sql, obj);
			try{
			while(re.next()){
				Faqixiangmu ff=new Faqixiangmu();
				ff.setId(re.getInt(1));
				ff.setTime(re.getString(2));
				ff.setEntryname(re.getString(3));
				ff.setStatus(re.getString(4));
				ff.setJy(re.getString(5));
				ff.setLzstatus(re.getString(6));
				ff.setLzjianyi(re.getString(7));
				listw.add(ff);
			}
			re.close();
			return listw;
			}catch(Exception e){
				System.out.println(e.getMessage()+"queryqiantaiwodeprogect");
			}
			return listw;
		}
		/*��Ŀ��˵Ľ�� ���뵽���ݿ�
		 * (non-Javadoc)
		 * @see com.dao.Dao#updateproject(com.dao.Idea)
		 */
		public void updateproject(Idea idea){
			String sql="insert into Shenhe values (?,?,?,?)";
			Object[] obj=new Object[]{idea.getId(),idea.getStatus(),idea.getShenherenname(),idea.getShdate()};
			Factory.executeupdate(sql, obj);
		}
		/*������Ŀ��������������״̬
		 * (non-Javadoc)
		 * @see com.dao.Dao#updateprojectstatus(com.dao.Idea)
		 */
		public void updateprojectstatus(Idea ide){
			String sql="update Shenhe set sh_status=? where sh_xm_id=?";
			Object[] obj =new Object[]{ide.getStatus(),ide.getId()};
			Factory.executeupdate(sql, obj);
		}
		/*�����û��������û�����ʵ����
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryusername(java.lang.String)
		 */
		public String queryusername(String name){
			String sql="select enroll_sname from Yonghu where enroll_name=?";
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
		 * ��ǰ̨�Ҿ��Ǯ¼�뵽���ݿ���
		 */
		public void adddonation(Donation dd){
			String sql="insert into Juankuan values (?,?,?,?)";
			Object[] obj=new Object[]{dd.getZhname(),dd.getIidd(),dd.getMoney(),dd.getDonationtime()};
			Factory.executeupdate(sql, obj);
		}
		/*
		 * �����ݿ��еľ����Ϣ��ʾ����̨����ȷ�Ͻ���
		 */
		public List<Donation > querydonation(){
			String sql="select top 1 * from Juankuan";
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
		/*�Ѳ���ȷ�Ϲ��ľ����Ϣ���뵽���ݿ���income��
		 * (non-Javadoc)
		 * @see com.dao.Dao#addincome(com.dao.Donation)
		 */
		public void addincome(Donation dd){
			String sql="insert into Shouru values(?,?,?,?,?,?,?)";
			Object[] obj=new Object[]{dd.getID(),dd.getIncomename(),dd.getProjectname(),dd.getMoney(),dd.getDonationtime(),dd.getStatus(),dd.getZhname()};
			Factory.executeupdate(sql, obj);
		}
		/*���ݺ�̨��¼��Ա���û����õ���ʵ����
		 * (non-Javadoc)
		 * @see com.dao.Dao#queryhtzhname(java.lang.String)
		 */
		public String queryhtzhname(String name){
			String sql="select sf_name from Yuangong where  sf_usemame=?";
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
		/*
		 * ��ѯ������֤�еĸ��˼��
		 */
		public String querygerenrenzheng(String name){
			String sql="select gerenjianjie from gerenrenzheng where zhname=?";
			Object[] obj=new Object[]{name}; 
			ResultSet re=Factory.executequery(sql, obj);
			String jianjie=null;
			try{
			while(re.next()){
				jianjie=re.getString(1);
			}
			return jianjie;
			}catch(Exception e){
				System.out.println(e.getMessage()+"querygerenrenzheng");
			}
			return null;
		}
		/*
		 * �Ѹ�����֤�ĸ��˼��¼�뵽���ݿ�
		 */
		public void updategerenrenzheng(Ren ss){
			String sql="insert into gerenrenzheng values(?,?)";
			Object[] obj=new Object[]{ss.getZhname(),ss.getGerenjianjie()};
			Factory.executeupdate(sql, obj);
		}
		/*
		 * �ѻ�����֤������¼�뵽���ݿ�
		 */
		public void updatejigourenzheng(Gou gg){
			String sql="insert into Jgrenzheng (jigouquancheng,dianhua,addresss,xingzhi,founddate,faren,idcard,jigoujianjie,logo)values(?,?,?,?,?,?,?,?,?)";
			Object[] obj=new Object[]{gg.getJigouquancheng(),gg.getDianhua(),gg.getName(),gg.getXingzhi(),gg.getFounddate(),gg.getFaren(),gg.getIdcard(),gg.getJigoujianjie(),gg.getLogo()};
			Factory.executeupdate(sql, obj);
			
		}
		/*��ѯ������֤��ȫ��
		 * (non-Javadoc)
		 * @see com.daozkj.Dao#queryjigouquancheng(java.lang.String)
		 */
		public String queryjigouquancheng(String name){
			String sql="select jigouquancheng from Jgrenzheng where addresss=?";
			Object[] obj=new Object[]{name};
			ResultSet re=Factory.executequery(sql, obj);
			String quancheng=null;
			try{
			while(re.next()){
				quancheng=re.getString(1);
			}
			return quancheng;
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			return null;
		}
		
	}


