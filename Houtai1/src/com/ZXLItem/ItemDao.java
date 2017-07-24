package com.ZXLItem;

import java.util.List;

public interface ItemDao {
	public List<ItemInfo> select();/*查询全部信息*/
	public int getDate(String date,String finals,int id);
	public int updateStates(String states,int id);
}
