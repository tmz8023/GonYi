package com.factoryzkj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Factory {
	static{
		try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		}catch(Exception e){
			System.out.println(e.getMessage()+"1");
		}
	}
	public static Connection getconnection(String basename){
		Connection con=null;
		String URL="jdbc:sqlserver://localhost:1433;DatabaseName="+basename;
		try{
		con=DriverManager.getConnection(URL,"sa","123456");
		}catch(Exception e){
			System.out.println(e.getMessage()+"2");
		}
		return con;
	}
	public static void closeall(Connection cc,PreparedStatement pp,ResultSet rr){
		try{
		if(cc!=null){cc.close();cc=null;}
		if(pp!=null){pp.close();pp=null;}
		if(rr!=null){rr.close();rr=null;}
		}catch(Exception e){
			System.out.println(e.getMessage()+"32");
		}
	}
	public static void setparams(PreparedStatement ps ,Object[] obj){
		try{
		for(int i=0;i<obj.length;i++){
			ps.setObject(i+1, obj[i]);
		}
		}catch(Exception e){
			System.out.println(e.getMessage()+"6");
		}
	}
	public static void executeupdate(String sql,Object[] obj){
		Connection con=getconnection("GongY");
		PreparedStatement ps=null;
		
		try{
		ps=con.prepareStatement(sql);
		
		setparams(ps,obj);
		ps.executeUpdate();
		}catch(Exception e ){
			System.out.println(e.getMessage()+"3");
		}finally{
			closeall(con,ps,null);
		}
	}
	public  static ResultSet executequery(String sql,Object[] obj){
		Connection con=getconnection("GongY");
		ResultSet re=null;
		try{
		PreparedStatement ps=con.prepareStatement(sql);
		setparams(ps,obj);
		
		re=ps.executeQuery();
		return re;
		}catch(Exception e){
			System.out.println(e.getMessage()+"q'");
		}
		return re;
	}
}
