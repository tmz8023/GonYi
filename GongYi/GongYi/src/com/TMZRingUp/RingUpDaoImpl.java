package com.TMZRingUp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class RingUpDaoImpl implements RingUpaDao{
	/**
	 * 验证登录账户密码是否正确
	 * 
	 */
	public List<RingUpa> name() {
		String str="select enroll_name,enroll_pwd from Yonghu";
		ResultSet rs = DaoFactory.executeQuery(str, null);
		List<RingUpa> list=new ArrayList<RingUpa>();
		try{
			while(rs.next()){
				RingUpa ru=new RingUpa();
				ru.setName(rs.getString(1));
				ru.setPass(rs.getString(2));
				list.add(ru);
			}
		}catch(Exception e){

		}
		return list;
	}
	/**
	 * 获取捐款总人数
	 */
	public int Countc(){
		String str="select count(*) from Juankuan ";
		ResultSet rs=DaoFactory.executeQuery(str, null);
		int countc=0;
		try {
			while(rs.next()){
				countc=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return countc;
	}
	/**
	 * 获取捐款总金额
	 */
	public int Countm(){
		String str="select SUM(gift_money) from Juankuan ";
		ResultSet rs=DaoFactory.executeQuery(str, null);
		int countm=0;
		try {
			while(rs.next()){
				countm=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return countm;
	}
}
