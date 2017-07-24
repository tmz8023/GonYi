package com.YXcexpend;

import java.util.List;

import com.YXexpend.entity.Apply;
import com.YXexpend.entity.Expend;
import com.YXexpend.entity.Jijin;
import com.YXexpend.entity.Xm;

public interface Dao {
	public List<ZhiChu>query();//支出详情列表查询
	public List<ZhiChu>query1(ZhiChu z);//单个支出查询
	public int summoney();//支出总金额查询
	public List<Apply>query2();//支出申请查询
	public List<Apply>query3(Apply a);//单个支出申请查询
	public int deleteexpend(Expend ee);//删除支出详情
	
	public int updatesh(Jijin jj);                           //更新申请表的状态
	public int addstatus(Jijin j);     //审核结果插入到数据库
	public String personname(String name);//后台根据登录名获得审核人名字
	public List<Zhi>zz();//查询需要放款的项目
	public int addzhichu(ZhiChu zz);  //钱存入到数据库支出表
	
	public int addgeren(Ren r);//个人认证信息添加到数据库
	public List<Ren>rr();//查询个人认证信息
	public int update(Ren ee);//审核个人认证
	public int addren(Ren e);//审核结果插入到数据库
	
	public List<Xm>chaxun(Xm xx); //根据id查询项目详情
	
	public int smoney();//显示剩余的总金额
	
	public int queryjuanmoney(int id);//算出已捐款的总金额(每个项目）
	public int queryshenpi(int id);//审批的金额
	public void updateshengxia(int shengxia,int id);//剩下的金额
	public void updatelzstatus(int id,String status);//更新放款的状态
	public void updateyimoney( int id,int yimoney);
}
