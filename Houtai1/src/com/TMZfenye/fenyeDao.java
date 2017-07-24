package com.TMZfenye;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ConPool.DaoFactory;



public class fenyeDao {
	private conpol conpol=new conpol();
	public List<fenye>  selectCasee(int startIndex,int maxPage){
		List<fenye> li=new ArrayList<fenye>();
		String str="select top "+maxPage+" s.income_id,s.income_name,s.income_askid,xm.ask_name,s.income_money,s.income_date,s.income_status,s.income_perspon from Shouru s,Xmshenqing xm where income_id not in(select top "+startIndex+" income_id from Shouru) and s.income_askid=xm.ask_id order by income_id desc";
		System.out.println(str);
		Connection con=conpol.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(str);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				fenye cs=new fenye();
				cs.setId(rs.getInt(1));
				cs.setName(rs.getString(2));
				cs.setAskId(rs.getInt(3));
				cs.setXmname(rs.getString(4));
				cs.setMoney(rs.getString(5));
				cs.setDate(rs.getString(6));
				cs.setPerson(rs.getString(7));
				cs.setStatus(rs.getString(8));
				
				li.add(cs);
			}
			
			con.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			//conpol.Close();
		}
		
		return li;
	};
	public int getCount(){
		String str="select count(*) from Shouru";
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
	public int SumMoney() {
		String money="select SUM(income_money) from Shouru";
		int sm=0;
		ResultSet query = DaoFactory.executeQuery(money, null);
		try{
			query.next();
			sm=query.getInt(1);
		}catch(Exception e){}
		return sm;
	}
}
