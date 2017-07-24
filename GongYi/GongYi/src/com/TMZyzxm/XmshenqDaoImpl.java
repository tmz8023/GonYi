package com.TMZyzxm;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.enroll.DaoFactory;

public class XmshenqDaoImpl implements XmshenqDao{
	/**
	 * 从数据库查找项目名
	 */
	public List<Xmshenq> askName(String name) {
		String str="select ask_name from Xmshenqing";
		ResultSet rs=DaoFactory.executeQuery(str, null);
		List<Xmshenq> li=new ArrayList<Xmshenq>();
		try {
			while(rs.next()){
				Xmshenq xm=new Xmshenq();
				xm.setName(rs.getString(1));
				li.add(xm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return li;
	}

}
