package com.SZHzzsh;

import java.util.List;

public interface Dao {
	public List<zijin> selectCasee(int startIndex,int maxPage);//分页
	public int getCount();//查询数据总条数
	public void addproject(zijin zjzj);//插入理事资金审核表
	public int update(zijin zj);//更新
	public List<xmsq> select(xmsq en);//查询项目详情
}