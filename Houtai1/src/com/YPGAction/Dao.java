package com.YPGAction;

import java.util.List;
import java.util.Map;

import com.YPGQXAction.ActRoLL;
import com.YPGQXAction.ActionXG;
import com.YPGQXAction.Auth;
import com.YPGQXAction.AuthNew;
import com.YPGQXAction.AuthRole;
import com.YPGQXAction.Employee;
import com.YPGQXAction.RolName;
import com.YPGQXAction.Role;

public interface Dao {
	/**
	 * 用户管理
	 * 
	 */
	public List<User> queryStudents();
	public List<User>query(User uu);
	/*public int addUser(User us);
	public int updateUser(User se);
	public int deleteUser(User ss);*/
	
	/**
	 * 员工管理
	 */
	public List<Employee>queryEmployee();
	public List<Employee>queryEe(Employee ee);
	public int addEmployee(Employee ee);
	public int updateEmployee(Employee ee);
	public int deleteEmployee(Employee ee);
	
	/**
	 * 角色
	 */
	public List<Role> queryRole();
	public int addRole(Role rr);
	public Integer qwerRole(Role rr);
	public List<Role> selectRole(Role rr);
	public int addActRole();
	/**
	 * 权限
	 */
	public List<Auth> queryAuth();
	public int addAuth(Auth aa);
	public int updateAuth(Auth aa);
	List<Auth>selectAuth(Auth aa);
	/**
	 * 员工与角色表
	 */
	/*public List<EmployeeRole> queryEmployeeRole();
	public int addEmployeeRole(EmployeeRole er);
	public int updateEmployeeRole(EmployeeRole er);*/
	
	/**
	 * 角色与权限
	 */
	/*
	public List<AuthRole> queryAuthRole();
	public int addAuthRole(AuthRole ar);
	public int updateAuthRole(AuthRole ar);*/
	
	/**
	 * 视图与连表
	 */
	public List<ActRoLL> queryActRole();
	public List<RolName> select1111(String rr);
	//public String queryRole1111(String tt);
	//public List<RoAcRA> queryluJing(String dd);
	public List<Employee> queryED();
	public List<ActionXG> queryXG();
	public int updateQX(AuthRole ar);
	
	/**
	 * 权限修改篇
	 */
	public List<AuthNew> queryAUTH();
	boolean addrole(String rightsid[],String rolename);
	public boolean xiugai(String[] rigid, int dd);
	public List<Map<String, Object>> chaxun(int jioid);
	public List<Map<String, Object>> queryId(String jioid);
	//public boolean xiugai(String[] quanid, String uname);
}
