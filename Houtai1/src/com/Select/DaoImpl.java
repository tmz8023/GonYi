package com.Select;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoImpl implements Dao{
	/*
	 * 分页查询
	 */
	private conpol conpol=new conpol();
	public List<lz> selectCasee(int startIndex, int maxPage) {
		// TODO Auto-generated method stub
		List<lz> li=new ArrayList<lz>();
		String str="select top "+maxPage+" * from lz where lz_id not in(select top "+startIndex+" lz_id from lz)";
		Connection con=conpol.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(str);		
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				lz lp=new lz();
				lp.setLz(rs.getInt(1));
				lp.setLz_name(rs.getInt(2));
				lp.setLz_status(rs.getString(3));
				lp.setLz_time(rs.getString(4));
				lp.setLz_reasons(rs.getString(5));
				lp.setLz_person(rs.getString(6));
				lp.setLz_status1(rs.getString(7));
				lp.setLz_person1(rs.getString(8));
				lp.setNote(rs.getString(9));
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

	/*查询项目审核表里面审核通过理事未审核的总条数
	 * (non-Javadoc)
	 * @see SZHlssh.Dao#getCount()
	 */
	public int getCount(){
		String str="select count(*) from lz";
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
