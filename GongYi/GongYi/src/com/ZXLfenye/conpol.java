package com.ZXLfenye;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp.BasicDataSource;

public class conpol {

	private static BasicDataSource bds=null;
	static{
		bds=new BasicDataSource();
		bds.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		bds.setUrl("jdbc:sqlserver://localhost:1433; DatabaseName=GongY");
		bds.setUsername("sa");
		bds.setPassword("123456");
		//bds.setDefaultAutoCommit(true);
	}
	public Connection getConnection(){
		if(bds!=null){
			try {
				
				return bds.getConnection();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
		}
		
		return null;
		
	}
}
