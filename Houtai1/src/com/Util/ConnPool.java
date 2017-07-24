package com.Util;

import java.sql.Connection;

import org.apache.commons.dbcp.BasicDataSource;

public class ConnPool {
	public static BasicDataSource dataSource=null;
	public ConnPool() {
		dataSource =new BasicDataSource();
		dataSource.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		dataSource.setUrl("jdbc:sqlserver://localhost:1433;DatabaseName=GongY");
		dataSource.setUsername("sa");
		dataSource.setPassword("123456");
		dataSource.setInitialSize(10);
		dataSource.setMaxActive(10);
		dataSource.setMinIdle(5);
		dataSource.setMaxWait(4000);
	}
	public Connection getConnection(){
		if(dataSource.getNumActive()>=10){new ConnPool();}
		try {
			if(dataSource!=null){
				return dataSource.getConnection();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}return null;
	}
	public void close(){
		try {
				dataSource.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
