package com.TMZRingUp;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ConPool.DaoFactory;
import com.YPGAction.Factory;

public class RingUpDaoImpl implements RingUpaDao{

	public List<RingUpa> name() {
		String str="select sf_username,sf_password from Yuangong";
		ResultSet rs = DaoFactory.executeQuery(str, null);
		List<RingUpa> list=new ArrayList<RingUpa>();
		try{
			while(rs.next()){
				RingUpa ru=new RingUpa();
				ru.setName(rs.getString(1));
				ru.setPass(rs.getString(2));
				list.add(ru);
			}
		}catch(Exception e){

		}
		return list;
	}
	/**
	 * 根据用户名字查询所拥有的路径
	 */
	public List<RoAcRA> queryluJing(String dd){
		String sql="select addrices from YRoAcRA where status='否' and sf_username=?";
		Object[]obj=new Object[]{dd};
		List<RoAcRA> LL=new ArrayList<RoAcRA>();
		ResultSet rs=Factory.executeQuery1(sql, obj);
		try{
			while(rs.next()){
				RoAcRA ro=new RoAcRA();
				ro.setAddrices(rs.getString(1));
				System.out.println(rs.getString(1)+"         aaaaaaaaaaabbbbbbbbbbbb");
				LL.add(ro);
			}
		}catch(Exception e){
			System.out.println(e.getMessage()+"1111");
		}
		return LL;
	}
			
	/**
	 * 根据用户名字获取角色名
	 */
	public String queryRole1111(String tt) {
		String sql="select roleName from YRoAcRA where status='否' and sf_username=?";
		Object[]obj=new Object[]{tt};
		ResultSet rs=Factory.executeQuery1(sql, obj);
		try{
			rs.next();
			String name=rs.getString(1);
			return name;
		}catch(Exception e){
			
		}
		return null;
	}
	public List<SelectProjectMoney> SelectProjectMoney() {
		System.out.println("开始查询");
		// TODO Auto-generated method stub
		//String sql="select top 1 * from lz  where lz_name not in(select expend_name from Zhichu) and lz_status1='审核通过'";
		//String sql="select top 1 * from lz where lz_status1='审核通过' order by lz_id desc";
		//String sql="select top 1 * from lz  where lz_id not in(select expend_askid from Zhichu) and lz_status1='审核通过'";
		//String sql="select lz_id,lz_name,lz_status,lz_time,lz_reasons,lz_person,lz_status1,lz_person1,note,lz_money,moneym,yimoney from lz where states='未发放'";
		String sql="select l.lz_id,l.lz_name,xm.ask_name,l.lz_status,l.lz_time,l.lz_reasons,l.lz_person,l.lz_status1,l.lz_person1,l.note,l.lz_money,l.moneym,l.yimoney,xm.shengxia from lz l,Xmshenqing xm where l.states='已发放' and xm.ask_id=l.lz_name order by l.lz_id desc";
		ResultSet rs=DaoFactory.executeQuery(sql, null);
		List<SelectProjectMoney>zhi=new ArrayList<SelectProjectMoney>();
		try{
			while(rs.next()){
				SelectProjectMoney zi=new SelectProjectMoney();
				zi.setId(rs.getInt(1));
				zi.setName(rs.getInt(2));
				zi.setXmname(rs.getString(3));
				zi.setShenstatus(rs.getString(4));
				zi.setShijian(rs.getString(5));
				zi.setReason(rs.getString(6));
				zi.setPersonname(rs.getString(7));
				zi.setLishistatus(rs.getString(8));
				zi.setPerson1(rs.getString(9));
				zi.setReason1(rs.getString(10));
				zi.setSmoney(rs.getInt(11));
				zi.setMoneym(rs.getInt(12));
				zi.setYimoney(rs.getInt(13));
				zi.setShengxia(rs.getInt(14));
				zhi.add(zi);
			}
			return zhi;
		}catch(Exception e){
			System.out.println(e.getMessage()+"zhi");
		}
		return zhi;
	}
}
