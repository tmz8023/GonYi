package com.TMZfenye;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class fenyeDao {
	private conpol conpol=new conpol();
	public List<fenye>  selectCasee(int startIndex,int maxPage){
		List<fenye> li=new ArrayList<fenye>();
		String str="select top "+maxPage+" lsxm.sh_xm_id,xmsq.ask_name,xmsq.lujing,xmsq.ask_reason,xmsq.ask_time,xmsq.ask_finals from Xmshenqing xmsq,lsxm lsxm where lsxm.sh_xm_id not in(select top "+startIndex+" lsxm.sh_xm_id from Xmshenqing) and lsxm.xm_states='审核通过' and lsxm.sh_xm_id=xmsq.ask_id and states='已发布' order by lsxm.sh_xm_id desc";
		System.out.println(str);
		Connection con=conpol.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(str);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				fenye cs=new fenye();
				cs.setId(rs.getInt(1));
				cs.setName(rs.getString(2));
				cs.setLujing(rs.getString(3));
				cs.setContent(rs.getString(4));
				cs.setDate(rs.getString(5));
				cs.setFinals(rs.getString(6));
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
		String str="select count(*)  from Xmshenqing xmsq,lsxm lsxm where lsxm.xm_states='审核通过' and lsxm.sh_xm_id=xmsq.ask_id and states='已发布' ";
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
}
