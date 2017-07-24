package com.YPGAction;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Factory {
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	static{
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		}catch(Exception e){

		}
	}
	//获取连接
	public static Connection getConnection(String basename){
		String URL="jdbc:sqlserver://localhost:1433;Database="+basename;
		try{
			Connection con=DriverManager.getConnection(URL,"sa","123456");
			return con;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return null;
	}
	//关闭连接
	public static void colAll(Connection cc,ResultSet rs,PreparedStatement pp){
		try{
			if(cc!=null){cc.close();cc=null;}
			if(rs!=null){rs.close();rs=null;}
			if(pp!=null){pp.close();pp=null;}
		}catch(Exception e){

		}
	}
	public static PreparedStatement setParams(PreparedStatement ps,Object[]params){
		try{
			for(int i=0;i<params.length;i++){
				ps.setObject(i+1, params[i]);
			}
		}catch(Exception e){

		}
		return ps;
	}
	//删除，修改方法
	public static int executeUpdate(String sql,Object[] obj){
		int flag=-1;
		Connection con=getConnection("GongY");
		PreparedStatement ps=null;
		try{
			ps=con.prepareStatement(sql);
			setParams(ps, obj);
			ps.executeUpdate();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return flag;
	}
	//删除，修改方法1
	public static boolean executeUpdate1(String sql,Object[] obj){
		Connection con=getConnection("GongY");
		PreparedStatement ps=null;
		try{
			ps=con.prepareStatement(sql);
			setParams(ps, obj);
			int ret=ps.executeUpdate();
			if(ret>0){
				System.out.println("success!");
				return true;
			}else
			{
				System.out.println("fail!");
				
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return false;
	}
	
	//查询1
	public static ResultSet executeQuery1(String sql,Object[] obj){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		
		con=getConnection("GongY");
		try {
			ps=con.prepareStatement(sql);
			setParams(ps, obj);
			rs=ps.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//closeAll(con, ps, rs);
		}
		return rs;
	}
	//查询
		public  List<Map<String,Object>> executeQuery(String sql,Object[] params) {
			con=getConnection("GongY");
			List<Map<String,Object>> objectList=new ArrayList<Map<String,Object>>();
			try {
				ps=con.prepareStatement(sql);
				ps=setParams(ps, params);
				rs=ps.executeQuery();
				ResultSetMetaData rsmd=rs.getMetaData();
				while(rs.next()){//遍历结果集
					Map<String,Object> rowMap=new HashMap<String, Object>();
					for (int i = 0; i < rsmd.getColumnCount(); i++) {
						rowMap.put(rsmd.getColumnName(i+1), rs.getObject(i+1));
						
					}
					objectList.add(rowMap);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				
				//closeAll(con,ps,rs);
			}
			return objectList;

	}
	
}
