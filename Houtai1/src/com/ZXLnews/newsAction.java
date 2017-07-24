package com.ZXLnews;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.Util.ConnImpl;

public class newsAction {
	/*得到当前时间*/
	SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dd=time.format(new Date());
	
	HttpServletRequest request=ServletActionContext.getRequest();
	newsDao nd=new DaoImpl();
	newsInfo nif=new newsInfo();
	news ns;
	public news getNs() {
		return ns;
	}
	public void setNs(news ns) {
		this.ns = ns;
	}
	/*增加*/
	public String add(){
		nif.setId(ns.getId());
		nif.setName(ns.getName());
		nif.setContent(ns.getContent());
		nif.setImg(ns.getImg());
		nif.setDate(dd);
		
		nd.add(nif);
		
		List<newsInfo> lin=nd.select();
		HttpSession se=ServletActionContext.getRequest().getSession();
		se.setAttribute("new",lin);
		return "add";		
	}
	
	/*查询*/
	public String select(){		
		List<newsInfo> lin=nd.select();
		HttpSession se=ServletActionContext.getRequest().getSession();
		se.setAttribute("new",lin);
		return "sel";		
	}
	
	/*模糊查询*/
	public String selectName(String name){
		String sql="select * from Xwfabu where news_name like ?";
		Object[] params=new Object[]{"%"+name+"%"};
		ResultSet rs=ConnImpl.executeQuery(sql,params);
		List<newsInfo>lin=new ArrayList<newsInfo>();
		try {
			while(rs.next()){
				newsInfo nif=new newsInfo();
				nif.setId(rs.getInt(1));
				nif.setName(rs.getString(2));
				nif.setImg(rs.getInt(3));
				nif.setContent(rs.getString(4));
				nif.setDate(rs.getString(5));
				lin.add(nif);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return "seln";
		
	}
	
	/*修改*/
	public String update(){
		
		nif.setId(ns.getId());
		nif.setName(ns.getName());
		nd.update(nif);		
		List<newsInfo> lin=nd.select();
		HttpSession se=ServletActionContext.getRequest().getSession();
		se.setAttribute("new",lin);
		return "up";			
	}
	
	/*删除*/
	public String delete(){
		
		HttpServletRequest sg=ServletActionContext.getRequest();
		int a=Integer.parseInt(sg.getParameter("a"));
		nif.setId(a);
		nd.delete(nif);
		List<newsInfo> lin=nd.select();
		HttpSession se=ServletActionContext.getRequest().getSession();
		se.setAttribute("new",lin);
		return "del";
	
	}
	
}
