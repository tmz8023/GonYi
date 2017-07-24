package com.YXcexpend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.YXexpend.entity.Apply;
import com.YXexpend.entity.Expend;
import com.YXexpend.entity.Jijin;
import com.YXexpend.entity.Xiang;
import com.YXexpend.entity.Xm;

public class DaoImpl implements Dao{

	/**
	 * 支出详情列表查询
	 */
	public List<ZhiChu> query() {
		// TODO Auto-generated method stub
		//String sql="select*from Zhichu";
		String sql="select z.expend_askid,z.expend_name,x.ask_name,z.expend_money,z.expend_time,z.expend_perspon,z.expend_status from Zhichu z,Xmshenqing x where z.expend_name=x.ask_id order by expend_askid desc";
		ResultSet rs=DaoFactory.executeQuery(sql, null);
		List<ZhiChu> list=new ArrayList<ZhiChu>();

		try{
			while(rs.next()){
				ZhiChu zz=new ZhiChu();
				zz.setExpend_askid(rs.getInt(1));
				zz.setExpend_name(rs.getInt(2));
				zz.setAsk_name(rs.getString(3));
				zz.setExpend_money(rs.getInt(4));
				zz.setExpend_time(rs.getString(5));
				zz.setExpend_perspon(rs.getString(6));
				
				list.add(zz);
			}
			//return listbook;
		}catch(Exception e){

		}
		return list;
	}
	/**
	 * 单个支出查询
	 */
	public List<ZhiChu> query1(ZhiChu z) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql="select*from Zhichu where expend_name like ?";
		Object[] obj=new Object[]{"%"+z.getExpend_name()+"%"};
		List<ZhiChu>listzhichu=new ArrayList<ZhiChu>();
		rs=DaoFactory.executeQuery(sql, obj);
		try{
			while(rs.next()){
				ZhiChu zzz=new ZhiChu();
				zzz.setExpend_askid(rs.getInt(1));
				zzz.setExpend_name(rs.getInt(2));
				zzz.setExpend_money(rs.getInt(3));
				zzz.setExpend_time(rs.getString(4));
				zzz.setExpend_perspon(rs.getString(5));
				listzhichu.add(zzz);
			}
		}catch(Exception e){
			System.out.println(e.getMessage()+"1");
		}
		return listzhichu;
	}
	/**
	 * 支出总金额查询
	 */
	public int summoney() {
		// TODO Auto-generated method stub
		String money="select SUM(expend_money) from Zhichu";
		int sm=0;
		ResultSet query = DaoFactory.executeQuery(money, null);
		try{
			query.next();
			sm=query.getInt(1);
		}catch(Exception e){}
		return sm;
	}
	/**
	 * 支出申请查询
	 */
	public List<Apply> query2() {
		// TODO Auto-generated method stub
		String sql="select top 1 zc.ex_id,zc.ex_name,xm.ask_name,zc.ex_time,zc.ex_company,zc.ex_reason,zc.ex_money,zc.ex_person,zc.ex_status,xm.shengxia from Zcshenqing zc,Xmshenqing xm where ex_id not in(select id from zijin) and ex_status='待审核' and zc.ex_name=xm.ask_id";
		System.out.println(sql );
		//String sql="select * from Zcshenqing";
		ResultSet rs=DaoFactory.executeQuery(sql, null);
		List<Apply>lp=new ArrayList<Apply>();
		try{
			while(rs.next()){
				Apply ap=new Apply();
				ap.setEx_id(rs.getInt(1));
				ap.setEx_name(rs.getInt(2));
				ap.setXmname(rs.getString(3));
				ap.setEx_time(rs.getDate(4));
				ap.setEx_company(rs.getString(5));
				ap.setEx_reason(rs.getString(6));
				ap.setEx_money(rs.getInt(7));
				ap.setEx_person(rs.getString(8));
				ap.setEx_status(rs.getString(9));
				ap.setShengxia(rs.getInt(10));
				lp.add(ap);
			}
		}catch(Exception e){

		}
		return lp;
	}
	/**
	 * 单个支出申请查询
	 */
	public List<Apply> query3(Apply a) {
			// TODO Auto-generated method stub
		ResultSet rs=null;
		String sql="select*from Zcshenqing where ex_person like ?";
		Object[] obj=new Object[]{"%"+a.getEx_person()+"%"};
		List<Apply>listapply=new ArrayList<Apply>();
		rs=DaoFactory.executeQuery(sql, obj);
		try{
			while(rs.next()){
				Apply ap=new Apply();
				ap.setEx_id(rs.getInt(1));
				ap.setEx_name(rs.getInt(2));
				ap.setEx_time(rs.getDate(3));
				ap.setEx_company(rs.getString(4));
				ap.setEx_reason(rs.getString(5));
				ap.setEx_money(rs.getInt(6));
				ap.setEx_person(rs.getString(7));
				ap.setEx_status(rs.getString(8));
				listapply.add(ap);
			}
		}catch(Exception e){
			System.out.println(e.getMessage()+"1");
		}
		return listapply;
	}

	//删除
	public int deleteexpend(Expend ee) {
		// TODO Auto-generated method stub
		String sql="delete from Zhichu where expend_askid=?";
		Object[] obj=new Object[]{ee.getExpend_askid()};
		return DaoFactory.executeUpdate(sql, obj);
	}
	
	
	/**
	 * 修改申请状态
	 */
	public int updatesh(Jijin jj) {
		// TODO Auto-generated method stub
		System.out.println("开始更新");
		String sql="update Zcshenqing set ex_status=? where ex_id=?";
		Object[] obj=new Object[]{jj.getSh_status(),jj.getId()};
		return DaoFactory.executeUpdate(sql, obj);
	}
	/**
	 * 审核结果插入到数据库
	 */
	public int addstatus(Jijin j) {
		System.out.println("开始插入");
		// TODO Auto-generated method stub
		String sql="insert into zijin(xm_name,sh_status,sh_time,sh_reasons,sh_person,sh_money,money)values(?,?,?,?,?,?,?)";
		Object[] obj=new Object[]{j.getXm_name(),j.getSh_status(),j.getSh_time(),j.getSh_reasons(),j.getSh_person(),j.getSh_money(),j.getMoney()};
		
		return DaoFactory.executeUpdate(sql, obj);
	}
	/**
	 * 得到登录的用户名
	 */
		public String personname(String name) {
			System.out.println("得到用户名");
			// TODO Auto-generated method stub
			String sql="select sf_name from Yuangong where sf_username=?";
			Object[] obj=new Object[]{name};
			ResultSet rs=DaoFactory.executeQuery(sql, obj);
			try{
				while(rs.next()){
					String ss=rs.getString(1);
					return ss;
				}
			}catch(Exception e){
				System.out.println(e.getMessage()+"得到用户名");
			}
			return null;
		}

		/**
		 * 查询要放款的项目
		 */
		public List<Zhi> zz() {
			System.out.println("开始查询");
			// TODO Auto-generated method stub
			//String sql="select top 1 * from lz  where lz_name not in(select expend_name from Zhichu) and lz_status1='审核通过'";
			//String sql="select top 1 * from lz where lz_status1='审核通过' order by lz_id desc";
			//String sql="select top 1 * from lz  where lz_id not in(select expend_askid from Zhichu) and lz_status1='审核通过'";
			//String sql="select lz_id,lz_name,lz_status,lz_time,lz_reasons,lz_person,lz_status1,lz_person1,note,lz_money,moneym,yimoney from lz where states='未发放'";
			String sql="select l.lz_id,l.lz_name,xm.ask_name,l.lz_status,l.lz_time,l.lz_reasons,l.lz_person,l.lz_status1,l.lz_person1,l.note,l.lz_money,l.moneym,l.yimoney,xm.shengxia from lz l,Xmshenqing xm where l.states='未发放' and xm.ask_id=l.lz_name";
			ResultSet rs=DaoFactory.executeQuery(sql, null);
			List<Zhi>zhi=new ArrayList<Zhi>();
			try{
				while(rs.next()){
					Zhi zi=new Zhi();
					zi.setId(rs.getInt(1));
					zi.setName(rs.getInt(2));
					zi.setXmname(rs.getString(3));
					zi.setShenstatus(rs.getString(4));
					zi.setShijian(rs.getString(5));
					zi.setReason(rs.getString(6));
					zi.setPersonname(rs.getString(7));
					zi.setLishistatus(rs.getString(8));
					zi.setPerson1(rs.getString(9));
					zi.setReason1(rs.getString(10));
					zi.setSmoney(rs.getInt(11));
					zi.setMoneym(rs.getInt(12));
					zi.setYimoney(rs.getInt(13));
					zi.setShengxia(rs.getInt(14));
					zhi.add(zi);
				}
				return zhi;
			}catch(Exception e){
				System.out.println(e.getMessage()+"zhi");
			}
			return zhi;
		}
		/**
		 * 把审核的详情插入支出表
		 */
		public int addzhichu(ZhiChu zz) {
			System.out.println("插入支出表");
			// TODO Auto-generated method stub
			String sql="insert into Zhichu(expend_name,expend_money,expend_time,expend_perspon,expend_status)values(?,?,?,?,?)";
			System.out.println(sql);
			Object[] obj=new Object[]{zz.getExpend_name(),zz.getExpend_money(),zz.getExpend_time(),zz.getExpend_perspon(),zz.getExpend_status()};
			return DaoFactory.executeUpdate(sql, obj);
		}
		
		/**
		 * 查询个人认证信息
		 */
		public List<Ren> rr() {
			System.out.println("个人认证");
			// TODO Auto-generated method stub
			String sql="select * from renzheng ";
			//String sql="select*from renzheng where id=(select id from renzheng where id>${id})";
			ResultSet rs=DaoFactory.executeQuery(sql, null);
			List<Ren>rr=new ArrayList<Ren>();
			try{
				while(rs.next()){
					Ren r=new Ren();
					r.setId(rs.getInt(1));
					r.setUsername(rs.getString(2));
					r.setZhenname(rs.getString(3));
					r.setIdcard(rs.getString(4));
					r.setDizhi(rs.getString(5));
					r.setGongzuo(rs.getString(6));
					r.setPhone(rs.getString(7));
					r.setJieshao(rs.getString(8));
					r.setNstatus(rs.getString(9));
					r.setShenname(rs.getString(10));
					rr.add(r);
				}
			}catch(Exception e){
				
			}
			return rr;
		}
		
		/**
		 * 个人添加
		 */
		public int addgeren(Ren r) {
			// TODO Auto-generated method stub
			String sql="insert into renzheng(username,zhenname,idcard,dizhi,gongzuo,phone,jieshao,nstatus,shenname) values(?,?,?,?,?,?,?,?,?)";
			
			Object[]obj=new Object[]{r.getUsername(),r.getZhenname(),r.getIdcard(),r.getDizhi(),r.getGongzuo(),r.getPhone(),r.getJieshao(),r.getNstatus(),r.getShenname()};
			return DaoFactory.executeUpdate(sql, obj);
		}
		/**
		 * 审核个人认证
		 */
		public int update(Ren ee) { 
			System.out.println("dao更新实现");
			// TODO Auto-generated method stub
			String sql="update renzheng set nstatus=? where id=?";
			Object[] obj=new Object[]{ee.getNstatus(),ee.getId()};
			return DaoFactory.executeUpdate(sql, obj);

		}
		/**
		 * 审核结果插入到数据库
		 */
		public int addren(Ren e) {
			System.out.println("认证插入");
			// TODO Auto-generated method stub
			String sql="insert into ren (id,username,zhenname,idcard,dizhi,gongzuo,phone,jieshao,nstatus,shenname)values(?,?,?,?,?,?,?,?,?,?)";
			Object[] obj=new Object[]{e.getId(),e.getUsername(),e.getZhenname(),e.getIdcard(),e.getDizhi(),e.getGongzuo(),e.getPhone(),e.getJieshao(),e.getNstatus(),e.getShenname()};
			
			return DaoFactory.executeUpdate(sql, obj);
		}
		/**
		 * 根据id查询项目详情
		 */
		public List<Xm> chaxun(Xm xx) {
			// TODO Auto-generated method stub
			String sql="select * from Xmshenqing where ask_id=?";
			Object[] obj=new Object[]{xx.getAsk_id()};
			ResultSet rs=DaoFactory.executeQuery(sql, obj);
			List<Xm>list=new ArrayList<Xm>();
			try{
				while(rs.next()){
					Xm mm=new Xm();
					mm.setAsk_id(rs.getInt(1));
					mm.setAsk_name(rs.getString(2));
					mm.setAsk_sqname(rs.getString(3));
					mm.setAsk_reason(rs.getString(4));
					mm.setAsk_money(rs.getString(5));
					mm.setAsk_type(rs.getString(6));
					mm.setAsk_time(rs.getString(7));
					mm.setAsk_status(rs.getString(8));
					mm.setAsk_jianyi(rs.getString(9));
					list.add(mm);
					
				}
			}catch(Exception e){
				
			}
			return list;
		}
		
		/**
		 * 显示剩余总金额
		 */
		public int smoney() {
			// TODO Auto-generated method stub
			String  sql="select s.shou-z.zhi from  shou_ru s,zhi_chu z";
			int sm=0;
			ResultSet rs = DaoFactory.executeQuery(sql, null);
			try{
				rs.next();
				sm=rs.getInt(1);
			}catch(Exception e){}
			return sm;
		}
		
		/**
		 * 单个剩余项目金额
		 */
		public int ssmoney() {
			// TODO Auto-generated method stub
			
			String money="select s.sh-c.zh from shou s,chu c";
			int sm=0;
			ResultSet rs= DaoFactory.executeQuery(money, null);
			try{
				rs.next();
				sm=rs.getInt(1);
			}catch(Exception e){}
			return sm;
		}
		
		/**
		 * 算出已捐款的总金额(每个项目）
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
		 * 查询这个项目一共支出了多少钱
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
		 * 把剩余的钱插入到数据库
		 */
		public void updateshengxia(int shengxia,int id){
			String sql="update Xmshenqing set shengxia=? where ask_id=?";
			Object[] obj=new Object[]{shengxia,id};
			DaoFactory.executeUpdate(sql, obj);
		}
		
		/**
		 * 更改lz表的状态
		 */
		public void updatelzstatus(int id,String status){
			String sql="update lz set states=? where lz_id=?";
			Object[] obj=new Object[]{status,id};
			DaoFactory.executeUpdate(sql, obj);
		}
		public void updateyimoney( int id,int yimoney){
			String sql="update lz set yimoney=? where lz_id=?";
			Object[] obj=new Object[]{yimoney,id};
			DaoFactory.executeUpdate(sql, obj);
		}
		/**
		 * 查询项目的剩余金额
		 */
		public int queryShenXia(int id){
			String str="select shengxia from Xmshenqing where ask_id=?";
			Object[] obj=new Object[]{id};
			ResultSet rs=DaoFactory.executeQuery(str, obj);
			int shxia=0;
			try {
				while(rs.next()){
					shxia=rs.getInt(1);
				}
				return shxia;
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return 0;
		}

}
