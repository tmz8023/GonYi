package com.Select;

import java.util.List;

public interface Dao {
	public List<lz> selectCasee(int startIndex,int maxPage);//分页
	public int getCount();//查询数据总条数
}
