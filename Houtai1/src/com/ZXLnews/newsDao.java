package com.ZXLnews;

import java.util.List;

public interface newsDao {
	public int add(newsInfo nif);/*添加*/
	public List<newsInfo> select();/*查询*/
	public List<newsInfo> selectName(String name);/*模糊查询*/
	public int update(newsInfo nif);/*修改*/
	public int delete(newsInfo nif);/*删除*/
}
