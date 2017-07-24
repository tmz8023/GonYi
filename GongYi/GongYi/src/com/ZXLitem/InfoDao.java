package com.ZXLitem;

import java.util.List;

public interface InfoDao {
	public List<ItemInfo> select();
	public List<ItemInfo> queryProject();
	public List<Mani> queryprojectxiangqing(String  id);
}
