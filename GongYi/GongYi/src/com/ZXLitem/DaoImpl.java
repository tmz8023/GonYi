package com.ZXLitem;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Util.ConnImpl;


public class DaoImpl implements InfoDao{

	public List<ItemInfo> select() {
		// TODO Auto-generated method stub

		String sql="select lsxm.sh_xm_id,xmsq.ask_name,xmsq.ask_reason,xmsq.lujing,xmsq.dated,xmsq.ask_finals,xmsq.shenhe_money from Xmshenqing xmsq,lsxm where xmsq.ask_id=lsxm.sh_xm_id and lsxm.xm_states='审核通过' and lsxm.states='已发布' order by lsxm.sh_xm_id desc";
		ResultSet rs=ConnImpl.executeQuery(sql, null);
		List<ItemInfo> lin=new ArrayList<ItemInfo>();

		try{
			while(rs.next()){
				ItemInfo imfo=new ItemInfo();
				imfo.setId(rs.getInt(1));
				imfo.setName(rs.getString(2));
				imfo.setContent(rs.getString(3));
				imfo.setImg(rs.getString(4));

				imfo.setDate(rs.getString(5));
				imfo.setFinals(rs.getString(6));

				imfo.setMoney(rs.getString(7));
				lin.add(imfo);
			}
		}catch(Exception e){
			System.out.println(e.getMessage());

		}

		return lin;
	}
	/*向前台发布新的项目
	 * (non-Javadoc)
	 * @see com.ZXLitem.InfoDao#queryProject()
	 */
	public List<ItemInfo> queryProject() {
		// TODO Auto-generated method stub

		String sql="select top 1 lsxm.sh_xm_id,xmsq.ask_name,xmsq.ask_reason,xmsq.lujing,xmsq.ask_time,xmsq.ask_finals from Xmshenqing xmsq,lsxm lsxm where xmsq.ask_id=lsxm.sh_xm_id and lsxm.xm_states='审核通过' and lsxm.states='未发布'";
		ResultSet rs=ConnImpl.executeQuery(sql, null);
		List<ItemInfo> li=new ArrayList<ItemInfo>();
		try {
			while(rs.next()){
				ItemInfo info=new ItemInfo();
				info.setId(rs.getInt(1));
				info.setName(rs.getString(2));
				info.setContent(rs.getString(3));
				info.setLojing(rs.getString(4));
				info.setDate(rs.getString(5));
				info.setFinals(rs.getString(6));
				li.add(info);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return li;
	}
	/*向我要捐款界面显示捐款的项目详情
	 * (non-Javadoc)
	 * @see com.ZXLitem.InfoDao#queryprojectxiangqing(int)
	 */
	public List<Mani> queryprojectxiangqing(String id){
		String sql="select ask_name,ask_reason,shenhe_money,lujing from Xmshenqing where ask_id=?";
		Object[] obj=new Object[]{id};
		ResultSet re=ConnImpl.executeQuery(sql, obj);
		List<Mani> listi=new ArrayList<Mani>();
		try{
			while(re.next()){
				Mani info=new Mani();
				info.setName(re.getString(1));
				info.setReason(re.getString(2));
				info.setMoney(re.getString(3));
				info.setLujing(re.getString(4));
				listi.add(info);
				
				
			}
			System.out.println("list  changdu"+listi.size());
			return listi;
		}catch(Exception e){
			System.out.println(e.getMessage()+"queryprojectxiangqing");
		}
		return null;
	}
	/*
	 * 查询每个项目的捐款次数和捐款总数
	 */
	public List<Money> countmoney(String id){
		String sql="select SUM(income_money)as zongmoney,COUNT(income_askid) from Shouru where income_askid=?";
		Object[] obj=new Object[]{id};
		ResultSet re=ConnImpl.executeQuery(sql, obj);
		List<Money> listm=new ArrayList<Money>();
		try{
			while(re.next()){
				Money mm=new Money();
				mm.setMoney(re.getString(1));
				mm.setCount(re.getString(2));
				listm.add(mm);
			}
			return listm;
		}catch(Exception e){
			System.out.println(e.getMessage()+"countmoney");
		}
		return null;
	}
}
