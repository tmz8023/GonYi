package com.ZXLDonate;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.Util.ConnImpl;

public class DaoImpl implements InfoDao{

	public List<DonateInfo> select(String dd) {
		// TODO Auto-generated method stub
		
		String sql="select jk.gift_id,jk.gift_name,xmsq.ask_name,jk.gift_money,jk.gift_date from Juankuan jk,Xmshenqing xmsq where jk.gift_giftname=xmsq.ask_id and jk.gift_name=?";
		Object[] obj=new Object[]{dd};
		HttpSession se=ServletActionContext.getRequest().getSession();
		ResultSet rs=ConnImpl.executeQuery(sql,obj);
		List<DonateInfo> lid=new ArrayList<DonateInfo>();
		try {
			while(rs.next()){
				DonateInfo din=new DonateInfo();
				din.setId(rs.getInt(1));
				din.setName(rs.getString(2));
				din.setGf_name_id(rs.getString(3));
				din.setDate(rs.getString(4));
				din.setMoney(rs.getString(5));
				
				lid.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return lid;
	}
	public int getCount(String name){
		String str="select count(*) from Juankuan where gift_name=?";
		Object[] obj=new Object[]{name};
		int count=0;
		ResultSet rs=DaoFactory.executeQuery(str, obj);
		try {
			rs.next();
			count=rs.getInt(1);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return count;
	}
	public int getMoney(String name){
		String str="select sum(gift_money) from Juankuan where gift_name=?";
		Object[] obj=new Object[]{name};
		ResultSet rs=DaoFactory.executeQuery(str, obj);
		int money=0;
		try {
			rs.next();
			money=rs.getInt(1);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return money;
	}
}
