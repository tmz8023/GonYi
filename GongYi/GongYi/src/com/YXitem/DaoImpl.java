package com.YXitem;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.enroll.DaoFactory;



public class DaoImpl implements Dao{
	/**
	 * ǰ̨֧������������ݿ�
	 */
		public int addsq(Xiang xx) {		
			String sql="insert into Zcshenqing(ex_name,ex_time,ex_company,ex_reason,ex_money,ex_person)values(?,?,?,?,?,?)";
			Object[] obj=new Object[]{xx.getEx_name(),xx.getEx_time(),xx.getEx_company(),xx.getEx_reason(),xx.getEx_money(),xx.getEx_person()};
			return DaoFactory.executeUpdate(sql, obj);
			
		}
		/**
		 * ������֤���뵽���ݿ�
		 */
		public int addgeren(Ren e) {
			String sql="insert into renzheng (username,zhenname,idcard,dizhi,gongzuo,phone,jieshao,shenname)values(?,?,?,?,?,?,?,?)";
			Object[] obj=new Object[]{e.getUsername(),e.getZhenname(),e.getIdcard(),e.getDizhi(),e.getGongzuo(),e.getPhone(),e.getJieshao(),e.getShenname()};
			System.out.println(sql);
			return DaoFactory.executeUpdate(sql, obj);
		}
		/**
		 * ��ʾ���ý��
		 */
		public String sumoney(String name) {
			System.out.println("pp1");
			// TODO Auto-generated method stub
			String sql="select SUM(income_money)from Shouru where income_askid=?";
			Object[] obj=new Object[]{name};
			ResultSet rs=DaoFactory.executeQuery(sql, obj);
			String na=null;
			try {
				
				while(rs.next()){
					System.out.println("pp");
					na=rs.getString(1);
				};
				
				System.out.println(na);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return na;
		}
		/**
		 * ǰ̨����������ʾ�����ʽ�����
		 */
		public List<ZhiChu> query(String name) {
			// TODO Auto-generated method stub
				//String sql="select*from Zhichu";
			String sql="select x.ask_name,x.ask_sqname,z.expend_money,z.expend_time,z.expend_perspon,z.expend_status from Zhichu z,Xmshenqing x where z.expend_name=x.ask_id and ask_sqname in (select enroll_sname from Yonghu where enroll_name=?)";
			Object[]obj=new Object[]{name};
			ResultSet rs=DaoFactory.executeQuery(sql, obj);
				List<ZhiChu> list=new ArrayList<ZhiChu>();

				try{
					while(rs.next()){
						ZhiChu zz=new ZhiChu();
						
						zz.setExpend_name(rs.getString(1));
						zz.setEnroll_sname(rs.getString(2));
						zz.setExpend_money(rs.getString(3));
						zz.setExpend_time(rs.getString(4));
						zz.setExpend_perspon(rs.getString(5));
						zz.setExpend_status(rs.getString(6));
						list.add(zz);
					}
					//return listbook;
				}catch(Exception e){

				}
				return list;
	
		}
		/**
		 * ����Ѿ����ܽ��(ÿ����Ŀ��
		 * (non-Javadoc)
		 * @see com.YXcexpend.Dao#queryjuanmoney()
		 */
		public int queryjuanmoney(int id){
			String sql="select SUM(income_money) from Shouru where income_askid=?";
			Object[] obj=new Object[]{id};
			ResultSet re=DaoFactory.executeQuery(sql, obj);
			int money=0;
			try{
			while(re.next()){
				 money=re.getInt(1);
			}
			return money;
			}catch(Exception e){
				System.out.println(e.getMessage()+"queryjuanmoney");
			}
			return money;
		}
		/**
		 * ��ѯ�����Ŀһ��֧���˶���Ǯ
		 */
		public int queryshenpi(int id){
			String sql="select SUM(expend_money)from Zhichu where expend_name=?";
			Object[] obj=new Object[]{id};
			ResultSet re=DaoFactory.executeQuery(sql, obj);
			int zhichu=0;
			try{
			while(re.next()){
				zhichu=re.getInt(1);
			}
			return zhichu;
			}catch(Exception e){
				System.out.println(e.getMessage()+"queryshenpi");
			}
			return zhichu;
		}
		/**
		 * ��ʣ���Ǯ���뵽���ݿ�
		 */
		public void updateshengxia(int shengxia,int id){
			String sql="update Xmshenqing set shengxia=? where ask_id=?";
			Object[] obj=new Object[]{shengxia,id};
			DaoFactory.executeUpdate(sql, obj);
		}
}
