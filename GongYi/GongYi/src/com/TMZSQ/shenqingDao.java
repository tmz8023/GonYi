package com.TMZSQ;

import java.util.List;

public interface shenqingDao {
	
	public String query(String name);//查询用户名
	public List<String> selectSname(String Sname);//查询用户名的真实姓名
}
