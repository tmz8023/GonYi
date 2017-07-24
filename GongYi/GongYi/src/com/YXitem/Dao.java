package com.YXitem;

import java.util.List;





public interface Dao{
	public int addsq(Xiang xx);   //支出申请添加到数据库
	public int addgeren(Ren r);//个人认证信息添加到数据库
	public String sumoney(String name);//显示可以申请金额
	public List<ZhiChu>query(String name); //显示支出
	
	public int queryjuanmoney(int id);//算出已捐款的总金额(每个项目）
	public int queryshenpi(int id);
	public void updateshengxia(int shengxia,int id);
}
