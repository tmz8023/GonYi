package com.SZHlssh;

import java.util.List;

public interface Dao {
	public List<lsxm> selectCasee(int startIndex,int maxPage);//分页
	public int getCount();//查询数据总条数
	public void addproject(lsxm xmxm);//插入理事项目审核表
	public int update(lsxm xm);//更新
	public List<xmsq> select(xmsq en);//查询项目详情
	public void updatestate(int id ,String str);//更新审核意见
}
