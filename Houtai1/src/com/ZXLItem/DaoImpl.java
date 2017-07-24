package com.ZXLItem;

import java.sql.*;
import java.util.*;

import com.Util.ConnImpl;
import com.Util.ConnPool;

public class DaoImpl implements ItemDao{
	
	
	/**
	 * 查询数据库的值
	 */
	private ConnPool conpol=new ConnPool();
	public List<ItemInfo> select() {
		// TODO Auto-generated method stub
		List<ItemInfo> li=new ArrayList<ItemInfo>();
		
		Connection con=conpol.getConnection();
		String sql="select top 1 lsxm.sh_xm_id,xmsq.ask_name,xmsq.ask_reason,xmsq.shenhe_money,xmsq.lujing,lsxm.xm_states from Xmshenqing xmsq,lsxm lsxm where lsxm.xm_states='审核通过' and lsxm.sh_xm_id=xmsq.ask_id and lsxm.states='未发布'";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				ItemInfo it=new ItemInfo();
				
				it.setSh_xm_id(rs.getInt(1));
				it.setAsk_name(rs.getString(2));
				it.setAsk_reason(rs.getString(3));
				it.setMoney(rs.getString(4));
				it.setLojing(rs.getString(5));
				it.setXm_status(rs.getString(6));
				li.add(it);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return li;
	}
	
	
	/**
	 * 把发布项目的开始和结束时间更新到数据库
	 */
	public int getDate(String date, String finals,int id) {
		// TODO Auto-generated method stub
		
		String sql="update Xmshenqing set dated=?,ask_finals=? where ask_id=?";
		Object[] params=new Object[]{date,finals,id};
		return  ConnImpl.executeUpdate(sql, params);
	}

	public int updateStates(String states, int id) {
		// TODO Auto-generated method stub
		String sql="update lsxm set states=? where sh_xm_id=?";
		Object[] params=new Object[]{states,id};
		return  ConnImpl.executeUpdate(sql, params);
	}
	

	
	
}
