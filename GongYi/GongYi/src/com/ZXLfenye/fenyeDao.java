package com.ZXLfenye;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ZXLDonate.DaoFactory;



public class fenyeDao {
	private conpol conpol=new conpol();
	public List<fenye>  selectCasee(int startIndex,int maxPage){
		List<fenye> li=new ArrayList<fenye>();
		/*String str="select top "+maxPage+" jk.gift_id,jk.gift_name,xmsq.ask_name,jk.gift_money,jk.gift_date from Juankuan jk,Xmshenqing xmsq where gift_id not in(select top "+startIndex+" gift_id and jk.gift_giftname=xmsq.ask_id )";*/
		String str="select top "+maxPage+" jk.gift_id,jk.gift_name,xmsq.ask_name,jk.gift_money,jk.gift_date from Juankuan jk,Xmshenqing xmsq where gift_id not in(select top "+startIndex+" gift_id from Juankuan)";
		System.out.println(str);
		Connection con=conpol.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(str);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				fenye din=new fenye();
				din.setId(rs.getInt(1));
				din.setName(rs.getString(2));
				din.setGf_name_id(rs.getString(3));
				din.setDate(rs.getString(5));
				din.setMoney(rs.getString(4));
				li.add(din);
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
		String str="select count(*) from Juankuan";
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
		String money="select SUM(gift_money) from Juankuan";
		int sm=0;
		ResultSet query = DaoFactory.executeQuery(money, null);
		try{
			query.next();
			sm=query.getInt(1);
		}catch(Exception e){}
		return sm;
	}
}
