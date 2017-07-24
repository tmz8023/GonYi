package com.Select;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DaoFactory {
	static{
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}

	public static Connection getConnection(String databasename){
		Connection con = null;
		String URL="jdbc:sqlserver://localhost:1433;DatabaseName=" + databasename;
		try{
			con = DriverManager.getConnection(URL,"sa","123456");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return con;
	}
	
	public static void closeAll(Connection con,Statement ss,ResultSet rs){
		try{
			if(con!=null){
				con.close();
				con = null;
			}
			if(ss!=null){
				ss.close();
				ss = null;
			}
			if(rs!=null){
				rs.close();
				rs = null;
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	
	//插入数据语句
	public static void setParams(PreparedStatement ps,Object[] params){
		try{
			for(int i = 0;i<params.length;i++){
				ps.setObject(i+1, params[i]);
			}
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	
	//查询数据语句
	public static int executeUpdate(String sql,Object[]params){
		int flag = -1;
		Connection con = getConnection("GongY");
		PreparedStatement ps = null;
		try{
			ps = con.prepareStatement(sql);
			setParams(ps,params);
			flag = ps.executeUpdate();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			closeAll(con,ps,null);
		}
		return flag;

	}
	
	
	public static ResultSet executeQuery(String sql,Object[]params){
		Connection con = getConnection("GongY");
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			ps = con.prepareStatement(sql);
			setParams(ps,params);
			rs = ps.executeQuery();
		
			return rs;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			
			//closeAll(con,ps,null);
		}
		return null;
	}

}
