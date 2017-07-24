package com.TMZyzzj;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.enroll.DaoFactory;

public class ZijinyzDaoImpl implements ZijinyzDao{
	/**
	 * 获取登录用户下的捐款金额
	 */
	public String sum(String name){
		String str="select SUM(income_money) from Shouru sh,Xmshenqing xm where sh.income_askid=xm.ask_id and xm.ask_name=?";
		Object[] obj=new Object[]{name};
		ResultSet rs= DaoFactory.executeQuery(str, obj);
		String mon=null;
		try {
			while(rs.next()){
				mon=rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mon;
	}
}
