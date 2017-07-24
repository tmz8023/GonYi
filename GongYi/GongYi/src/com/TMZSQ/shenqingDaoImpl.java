package com.TMZSQ;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.enroll.DaoFactory;

public class shenqingDaoImpl implements shenqingDao{
	/**
	 * 通过当前用户名查找申请状态
	 */
	public String query(String name) {
		String str="select nstatus from renzheng where username=?";
		Object[] obj=new Object[]{name};
		ResultSet rs=DaoFactory.executeQuery(str, obj);
		try {
			while(rs.next()){
				String username=rs.getString(1);
				return username;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 
	 * 根据当前登录用户查询该用户申请的项目
	 */
	public List<String> selectSname(String sname) {
		String str="select ask_id from Xmshenqing where ask_sqname in (select enroll_sname from Yonghu where enroll_name=?)";
		Object[] obj=new Object[]{sname};
		ResultSet rs=DaoFactory.executeQuery(str, obj);
		List<String> list = new ArrayList<String>();
		try {
			while(rs.next()){
				String sqname=rs.getString(1);
				list.add(sqname);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}
}
