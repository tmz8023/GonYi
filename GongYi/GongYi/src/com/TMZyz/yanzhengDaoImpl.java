package com.TMZyz;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.enroll.DaoFactory;

public class yanzhengDaoImpl implements yanzhengDao{
	/**
	 * �����ݿ�����û���
	 */
	public List<yanzheng> query(String username) {
		String str="select enroll_name from Yonghu";
		ResultSet rs=DaoFactory.executeQuery(str, null);
		List<yanzheng> list=new ArrayList<yanzheng>();
		try {
			while(rs.next()){
				yanzheng yz=new yanzheng();
				yz.setUsername(rs.getString(1));
				list.add(yz);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
}
