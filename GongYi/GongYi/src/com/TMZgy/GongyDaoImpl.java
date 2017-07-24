package com.TMZgy;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.enroll.DaoFactory;

public class GongyDaoImpl implements GongyDao{

	public List<Gongy> sele() {
		String str="select  lsxm.sh_xm_id,xmsq.ask_name,xmsq.lujing,xmsq.ask_reason,xmsq.ask_time,xmsq.ask_finals from Xmshenqing xmsq,lsxm lsxm where lsxm.xm_states='审核通过' and lsxm.sh_xm_id=xmsq.ask_id and states='已发布'";
		ResultSet rs=DaoFactory.executeQuery(str, null);
		List<Gongy> li=new ArrayList<Gongy>();
		try {
			while(rs.next()){
				Gongy gg=new Gongy();
				gg.setId(rs.getInt(1));
				gg.setName(rs.getString(2));
				gg.setLujing(rs.getString(3));
				gg.setContent(rs.getString(4));
				gg.setDate(rs.getString(5));
				gg.setFinals(rs.getString(6));
				li.add(gg);
					
			}
			return li;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
}
