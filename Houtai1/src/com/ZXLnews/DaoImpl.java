package com.ZXLnews;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Util.ConnImpl;

public class DaoImpl implements newsDao{
	/*Ôö¼Ó*/
	public int add(newsInfo nif) {		
		String sql="insert into Xwfabu values (?,?,?,?)";
		Object[] params=new Object[]{nif.getName(),nif.getContent(),nif.getImg(),nif.getDate()};		
		return ConnImpl.executeUpdate(sql, params);
	}

	public List<newsInfo> select() {
		String sql="select * from Xwfabu";
		ResultSet rs=ConnImpl.executeQuery(sql, null);
		List<newsInfo> lin=new ArrayList<newsInfo>();
		try {
			while(rs.next()){
				newsInfo ni=new newsInfo();
				ni.setId(rs.getInt(1));
				ni.setName(rs.getString(2));
				ni.setContent(rs.getString(3));
				ni.setImg(rs.getInt(4));
				ni.setDate(rs.getString(5));
				lin.add(ni);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return lin;
	}

	public List<newsInfo> selectName(String name) {
		
		return null;
	}

	public int update(newsInfo nif) {
		String sql="update Xwfabu set news_name=? where new_id=?";
		Object[] params=new Object[]{nif.getName(),nif.getId()};
		return ConnImpl.executeUpdate(sql, params);
	}

	public int delete(newsInfo nif) {
		String sql="delete from Xwfabu where new_id=?";
		Object[]params=new Object[]{nif.getId()};
		return ConnImpl.executeUpdate(sql, params);
	}
	
	
	
}
