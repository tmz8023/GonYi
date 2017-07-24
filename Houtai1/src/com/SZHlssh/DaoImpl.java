package com.SZHlssh;

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
	public List<lsxm> selectCasee(int startIndex,int maxPage){
		List<lsxm> li=new ArrayList<lsxm>();
		
		String str = "select top("+maxPage+") m.* from (select x.ask_name,s.* from shenhe s,xmshenqing x where sh_states='审核通过' and xm_states='待审核' and s.sh_xm_id = x.ask_id)m where m.sh_id not in (select top("+startIndex+") sh_id from Shenhe)";
		
		//String str="select top "+maxPage+" * from Shenhe where sh_id not in(select top "+startIndex+" sh_id from Shenhe) and sh_states='审核中' and xm_states='待审核'";
		Connection con=conpol.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(str);		
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				lsxm lp=new lsxm();
				lp.setSh_xm_name(rs.getString(1));
				lp.setSh_id(rs.getInt(2));
				lp.setSh_xm_id(rs.getInt(3));
				lp.setSh_states(rs.getString(4));
				lp.setSh_shname(rs.getString(5));
				lp.setSh_date(rs.getString(6));
				lp.setSh_jianyi(rs.getString(7));
				lp.setXm_states(rs.getString(8));
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
	 * @see SZHlssh.Dao#getCount()
	 */
	public int getCount(){
		String str="select count(*) from Shenhe where sh_states='审核通过' and xm_states='待审核'";
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
	 * 将数据插入理事项目审核表
	 * (non-Javadoc)
	 * @see SZHlssh.Dao#addproject(SZHlssh.ls)
	 */
	public void addproject(lsxm xmxm) {
		// TODO Auto-generated method stub
		String sql="insert into lsxm (sh_xm_id,sh_states,sh_shname,sh_date,sh_jianyi,xm_person,xm_states,note) values(?,?,?,?,?,?,?,?)";
		Object[] obj=new Object[]{xmxm.getSh_xm_id(),xmxm.getSh_states(),xmxm.getSh_shname(),xmxm.getSh_date(),xmxm.getSh_jianyi(),xmxm.getXm_person(),xmxm.getXm_states(),xmxm.getNote()};
		DaoFactory.executeUpdate(sql,obj);
	}
	/**
	 * 更新项目审核表里面的理事状态
	 * (non-Javadoc)
	 * @see SZHlssh.Dao#update(SZHlssh.ls)
	 */
	public int update(lsxm xm) {
		// TODO Auto-generated method stub
		String sql="update Shenhe set xm_states=? where sh_id=?";
		Object[] objj=new Object[]{xm.getXm_states(),xm.getSh_id()};
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
	/**
	 * 根据项目编号更新审核意见
	 */
	public void updatestate(int id ,String str){
		String sql="update Xmshenqing set abd=? where ask_id=?";
		Object[] obj=new Object[]{str,id};
		DaoFactory.executeUpdate(sql, obj);
	}
}
