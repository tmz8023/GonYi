package com.SZHzzsh;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoImpl implements Dao{
	/**
	 * 分页查询
	 */
	private conpol conpol=new conpol();
	public List<zijin> selectCasee(int startIndex, int maxPage) {
		// TODO Auto-generated method stub
		List<zijin> li=new ArrayList<zijin>();
		String str="select top "+maxPage+" zj.id,zj.xm_name,xm.ask_name,zj.sh_time,zj.sh_reasons,zj.sh_person,zj.ls_status,zj.sh_money,zj.money,xm.shengxia  from zijin zj,Xmshenqing xm where id not in(select top "+startIndex+" id from zijin) and zj.xm_name=xm.ask_id and sh_status='审核通过' and ls_status='待审核'";
		Connection con=conpol.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(str);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				zijin lp=new zijin();
				lp.setId(rs.getInt(1));
				lp.setXm_name(rs.getInt(2));
				lp.setSh_status(rs.getString(3));
				lp.setSh_time(rs.getString(4));
				lp.setSh_reasons(rs.getString(5));
				lp.setSh_person(rs.getString(6));
				lp.setLs_status(rs.getString(7));
				lp.setSh_money(rs.getString(8));
				lp.setMoneym(rs.getInt(9));
				lp.setShengxia(rs.getInt(10));
				li.add(lp);
			}

			con.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}finally{
			//conpol.Close();
		}
		return li;
	}
	/**
	 * 查询项目审核表里面审核通过理事未审核的总条数
	 * (non-Javadoc)
	 * @see SZHzzsh.Dao#getCount()
	 */
	public int getCount() {
		String str="select count(*) from zijin where sh_status='审核通过' and ls_status='待审核'";
		int total=0;
		Connection con=conpol.getConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(str);
			ResultSet rs=ps.executeQuery();
			rs.next();
			total=rs.getInt(1);

			con.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}finally{
			//conpol.Close();
		}
		return total;
	}
	/**
	 * 将数据插入到理事表
	 * (non-Javadoc)
	 * @see com.SZHzzsh.Dao#addproject(com.SZHzzsh.zijin)
	 */
	public void addproject(zijin zjzj) {
		// TODO Auto-generated method stub
		String sql="insert into lz (lz_name,lz_status,lz_time,lz_reasons,lz_person,lz_status1,lz_person1,note,lz_money,moneym,yimoney) values(?,?,?,?,?,?,?,?,?,?,?)";
		Object[] obj=new Object[]{zjzj.getXm_name(),zjzj.getSh_status(),zjzj.getSh_time(),zjzj.getSh_reasons(),zjzj.getSh_person(),zjzj.getLs_status(),zjzj.getLz_person1(),zjzj.getNote(),zjzj.getSh_money(),zjzj.getMoneym(),zjzj.getYimoney()};
		DaoFactory.executeUpdate(sql,obj);
	}
	/**
	 * 根据ID更新资金表状态
	 * (non-Javadoc)
	 * @see com.SZHzzsh.Dao#update(com.SZHzzsh.zijin)
	 */
	public int update(zijin zj) {
		// TODO Auto-generated method stub
		String sql="update zijin set ls_status=? where id=?";
		Object[] objj=new Object[]{zj.getLs_status(),zj.getId()};
		return DaoFactory.executeUpdate(sql, objj);
	}
	/**
	 * 根据ID查询项目申请表详情
	 * (non-Javadoc)
	 * @see com.SZHzzsh.Dao#select(com.SZHzzsh.zijin)
	 */
	public List<xmsq> select(xmsq en) {
		// TODO Auto-generated method stub
		String sql="select * from Xmshenqing where ask_id=?";
		Object[] obj=new Object[]{en.getAsk_id()};
		ResultSet rs=DaoFactory.executeQuery(sql,obj);
		List<xmsq> lt=new ArrayList<xmsq>();
		try{
			while(rs.next()){
				xmsq xs = new xmsq();
				xs.setAsk_id(rs.getInt(1));
				xs.setAsk_name(rs.getString(2));
				xs.setAsk_sqname(rs.getString(3));
				xs.setAsk_reason(rs.getString(4));
				xs.setAsk_money(rs.getString(5));
				xs.setAsk_type(rs.getString(6));
				xs.setAsk_time(rs.getString(7));
				xs.setAsk_status(rs.getString(8));
				xs.setAsk_jianyi(rs.getString(9));
				xs.setShenhe_money(rs.getInt(10));
				xs.setLujing(rs.getString(11));
				lt.add(xs);
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return lt;
	}
}
