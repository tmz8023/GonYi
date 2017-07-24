package com.YPGAction;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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

public class DaoImpl extends Factory implements Dao {

	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;


	/**
	 * 用户管理的增删改查
	 * 查询所有数据库数据
	 */
	
	public List<User> queryStudents() {
		String sql="select * from Yonghu";				
		List<User> slist=new ArrayList<User>();
		rs=Factory.executeQuery1(sql, null);		
		try{

			while(rs.next()){
				User user=new User();
				user.setEnroll_id(rs.getInt(1));
				user.setEnroll_name(rs.getString(2));
				user.setEnroll_pwd(rs.getString(3));
				user.setEnroll_spwd(rs.getString(4));
				user.setEnroll_gender(rs.getString(5));
				user.setEnroll_carid(rs.getString(6));
				user.setEnroll_sname(rs.getString(7));
				user.setEnroll_phone(rs.getString(8));
				user.setEnroll_email(rs.getString(9));
				slist.add(user);
				/*System.out.println(user.getUsername());*/

			}

			//request.setAttribute("List", slist);

		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return slist;
	}
	/**
	 * 查询用户单个数据
	 */
	public List<User> query(User uu) {

		String sql="select * from Yonghu where enroll_sname=?";
		Object[] obj=new Object[]{uu.getEnroll_sname()};
		//System.out.println(uu.getUsername()+"    44");

		List<User> list=new ArrayList<User>();
		rs=Factory.executeQuery1(sql, obj);
		try{
			while(rs.next()){
				User user=new User();
				user.setEnroll_id(rs.getInt(1));
				user.setEnroll_name(rs.getString(2));
				user.setEnroll_pwd(rs.getString(3));
				user.setEnroll_spwd(rs.getString(4));
				user.setEnroll_gender(rs.getString(5));
				user.setEnroll_carid(rs.getString(6));
				user.setEnroll_sname(rs.getString(7));
				user.setEnroll_phone(rs.getString(8));
				user.setEnroll_email(rs.getString(9));
				list.add(user);
			}
		}catch(Exception e){
			System.out.println(e.getMessage()+"5");
		}
		return list;
	}
	/*
	public int addUser(User us) {
		String sql="insert into Yonghu values(?,?,?,?,?,?,?,?)";
		Object[] ob=new Object[]{us.getEnroll_name(),us.getEnroll_pwd(),us.getEnroll_spwd(),us.getEnroll_gender(),us.getEnroll_carid(),us.getEnroll_sname(),us.getEnroll_phone(),us.getEnroll_email()};
		return Factory.executeUpdate(sql, ob);
	}*/

	/*
	public int updateUser(User se) {
		String sql="update Yonghu set role=? where enroll_id=?";
		Object[] obje=new Object[]{se,se};
		return Factory.executeUpdate(sql, obje);
	}*/
	/*
	public int deleteUser(User ss) {
		String sql="delete from Yonghu where enroll_id=?";
		Object[] objec=new Object[]{ss.get};
		return Factory.executeUpdate(sql, objec);
	}	*/	


	/**
	 * 员工的增删改查
	 */

	/**
	 * 员工表的查询
	 */
	public List<Employee> queryEmployee() {
		String sql="select * from Yuangong order by sf_id asc";
		List<Employee> empl=new ArrayList<Employee>();
		rs=Factory.executeQuery1(sql, null);
		try{
			while(rs.next()){
				Employee employ=new Employee();
				employ.setSf_id(rs.getInt(1));
				employ.setSf_number(rs.getInt(2));
				employ.setSf_name(rs.getString(3));
				employ.setSf_age(rs.getInt(4));
				employ.setSf_gender(rs.getString(5));
				employ.setSf_cardId(rs.getString(6));
				employ.setSf_posname(rs.getString(7));
				employ.setSf_status(rs.getInt(8));
				employ.setSf_username(rs.getString(9));
				employ.setSf_password(rs.getString(10));
				employ.setSf_deptName(rs.getString(11));
				empl.add(employ);
			}			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return empl;
	}
	/**
	 * 员工表的单个查询
	 */
	public List<Employee> queryEe(Employee ee) {
		String sql="select * from Yuangong where sf_name=?";
		Object[] obj=new Object[]{ee.getSf_name()};
		List<Employee> lit=new ArrayList<Employee>();
		rs=Factory.executeQuery1(sql, obj);
		try{
			while(rs.next()){
				Employee employ=new Employee();
				employ.setSf_id(rs.getInt(1));
				employ.setSf_number(rs.getInt(2));
				employ.setSf_name(rs.getString(3));
				employ.setSf_age(rs.getInt(4));
				employ.setSf_gender(rs.getString(5));
				employ.setSf_cardId(rs.getString(6));
				employ.setSf_posname(rs.getString(7));
				employ.setSf_status(rs.getInt(8));
				employ.setSf_username(rs.getString(9));
				employ.setSf_password(rs.getString(10));
				employ.setSf_deptName(rs.getString(11));
				lit.add(employ);
			}
		}catch(Exception e){
			System.out.println(e.getMessage()+"5");
		}
		return lit;
	}

	/**
	 * 员工表的增加
	 */
	public int addEmployee(Employee ee) {
		String sql="insert into Yuangong values(?,?,?,?,?,?,?,?,?,?)";
		Object[] obj=new Object[]{ee.getSf_number(),ee.getSf_name(),ee.getSf_age(),ee.getSf_gender(),ee.getSf_cardId(),ee.getSf_posname(),ee.getSf_status(),ee.getSf_username(),ee.getSf_password(),ee.getSf_deptName()};

		return Factory.executeUpdate(sql, obj);
	}
	/**
	 * 员工表的更新
	 */
	public int updateEmployee(Employee ee) {
		String sql="update Yuangong set sf_posname=? where sf_id=?";
		Object[] obj=new Object[]{ee.getSf_posname(),ee.getSf_id()};
		return Factory.executeUpdate(sql, obj);
	}
	/**
	 * 员工表的删除
	 */
	public int deleteEmployee(Employee ee) {
		String sql="delete from Yuangong where sf_id=?";
		Object[] obj=new Object[]{ee.getSf_id()};
		return Factory.executeUpdate(sql, obj);
	}


	/**
	 * 角色
	 * 数据库内容的查询
	 */
	public List<Role> queryRole(){
		String sql="select * from Juese order by role_id asc";
		List<Role> liss=new ArrayList<Role>();
		rs=Factory.executeQuery1(sql, null);

		try {
			while(rs.next()){
				Role role=new Role();
				role.setRole_id(rs.getInt(1));
				role.setRole_name(rs.getString(2));
				role.setStatusRole(rs.getString(3));
				liss.add(role);
			}
		} catch (Exception e) {		
			e.printStackTrace();
		}
		return liss;
	}
	/**
	 * 角色的增加
	 */
	public int addRole(Role rr) {
		
		
		/*String sq="select role_id from Juese where role_name=?";
		Object[] ob=new Object[]{rr.getRole_name()};
		List<Role> list=new ArrayList<Role>();*/
		String sql="insert into Juese values(?)";
		Object[] obj=new Object[]{rr.getRole_name()};
		
		/*rs=Factory.executeQuery1(sq, ob);
		String sqq="insert into Act_Role values(?,?)";
		Object[] bb=new Object[]{rr.getRole_id(),aa.getActionid()}; 
		try{
			while(rs.next()){
				Role jj=new Role();
				jj.setRole_name(rs.getString(1));
				list.add(jj);
			}
		}catch(Exception e){
			
		}	*/
		return Factory.executeUpdate(sql, obj);
	}
	/**
	 * 
	 */
	public Integer qwerRole(Role rr){
		String sql="select role_id from Juese where role_name=?";
		Object[] obj=new Object[]{rr.getRole_name(),rr.getRole_id()};
		rs=Factory.executeQuery1(sql, obj);
		try{
			rs.next();
			int id=rs.getInt(1);
			return id;
		}catch(Exception e){
			
		}
		return null;
	}
	
	/**
	 * 
	 */
	public int addActRole() {
		
		return 0;
	}
	/**
	 * 角色的单个查询
	 */
	public List<Role> selectRole(Role rr){
		String sql="select * from Juese where role_name=?";
		Object[] obj=new Object[]{rr.getRole_name()};
		List<Role> listR=new ArrayList<Role>();
		rs=Factory.executeQuery1(sql, obj);
		try{
			while(rs.next()){
				Role role=new Role();
				role.setRole_id(rs.getInt(1));
				role.setRole_name(rs.getString(2));
				listR.add(role);
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return listR;
	}

	/**
	 * 权限
	 * 数据库内容的查询
	 */	
	public List<Auth> queryAuth(){
		String sql="select * from AcRolett";
		List<Auth>list=new ArrayList<Auth>();
		rs=Factory.executeQuery1(sql, null);
		try{
			while(rs.next()){
				Auth auth=new Auth();
				auth.setActionid(rs.getInt(1));
				auth.setActionName(rs.getString(2));
				auth.setAddrices(rs.getString(3));
				list.add(auth);
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return list;
	}
	/**
	 * 权限的增加
	 */
	public int addAuth(Auth aa) {
		String sql="insert into AcRolett values(?,?)";
		Object[] obj=new Object[]{aa.getActionName(),aa.getAddrices()};
		return Factory.executeUpdate(sql, obj);
	}
	/**
	 * 权限的修改
	 */
	public int updateAuth(Auth aa) {
		String sql="update AcRolett set actionName=? where actionid=?";
		Object[] obj=new Object[]{aa.getActionName(),aa.getActionid()};
		return Factory.executeUpdate(sql, obj);
	}
	/**
	 * 权限的单个查询
	 */
	public List<Auth>selectAuth(Auth aa){
		String sql="select * from AcRolett where actionName=?";
		Object[] obj=new Object[]{aa.getActionName()};
		List<Auth> listA=new ArrayList<Auth>();
		rs=Factory.executeQuery1(sql, obj);
		try{
			while(rs.next()){
				Auth auth=new Auth();
				auth.setActionid(rs.getInt(1));
				auth.setActionName(rs.getString(2));
				listA.add(auth);
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return listA;
	}
	
	/**
	 * 视图查询
	 */
	public List<ActRoLL> queryActRole(){
		String sql="select addrices from YRoAcRA where status='否'";	
		rs=Factory.executeQuery1(sql, null);
		List<ActRoLL> listvalue=new ArrayList<ActRoLL>();
		try{
			while(rs.next()){
				ActRoLL actll=new ActRoLL();
				//actll.setRoleName(rs.getString(1));
				//actll.setActionName(rs.getString(2));
				actll.setAddrices(rs.getString(1));
				//System.out.println(rs.getString(1)+"   aaaaaaaaaaaaaabbb");
				listvalue.add(actll);

			}


		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return listvalue;
	}

	/**
	 * 多表查询
	 */

	public List<RolName> select1111(String rr){
		//Object obj=session.getAttribute("username");
		//System.out.println(obj);
		String sql="select yy.sf_username,jj.role_name, ra.addrices,ra.status from Yuangong yy,Juese jj,YRoAcRA ra where yy.sf_posname=jj.role_name and jj.role_name=ra.roleName and yy.sf_username=ra.sf_username and ra.status='否' and yy.sf_username=?";		
		Object[]obj=new Object[]{rr};
		List<RolName> ls=new ArrayList<RolName>();
		rs=Factory.executeQuery1(sql, obj);
		try{
			while(rs.next()){
				RolName rol=new RolName();
				rol.setSf_username(rs.getString(1));
				rol.setRole_name(rs.getString(2));
				rol.setAddrices(rs.getString(3));
				rol.setStatus(rs.getString(4));
				System.out.println(rs.getString(3)+"   hhhhhhhhhhhhhhhhh");
				ls.add(rol);
			}

		}catch(Exception e){
			System.out.println(e.getMessage());
		}		
		return ls;
	}
	/**
	 * 根据用户名字获取角色名
	 */
	
	/*public String queryRole1111(String tt) {
		String sql="select roleName from YRoAcRA where status='否' and sf_username=?";
		Object[]obj=new Object[]{tt};
		ResultSet rs=Factory.executeQuery1(sql, obj);
		try{
			rs.next();
			String name=rs.getString(1);
			System.out.println(name+"    111111111111111111111");
			return name;
		}catch(Exception e){

		}
		return null;
	}*/
	
	/**
	 * 根据用户名字查询所拥有的路径
	 */
	
	/*public List<RoAcRA> queryluJing(String dd){
		String sql="select addrices from YRoAcRA where status='否' and sf_username=?";
		//System.out.println("名字"+dd);
		Object[]obj=new Object[]{dd};
		List<RoAcRA> LL=new ArrayList<RoAcRA>();
		rs=Factory.executeQuery1(sql, obj);
		try{
			while(rs.next()){
				RoAcRA ro=new RoAcRA();
				ro.setAddrices(rs.getString(1));
				System.out.println(rs.getString(1)+"   ffffffffffffff");
				LL.add(ro);
			}
		}catch(Exception e){
			System.out.println(e.getMessage()+"1111");
		}
		return LL;
	}*/
	
	/**
	 * 查询用户名和密码
	 */
	public List<Employee> queryED(){
		String sql="select sf_username,sf_password from Yuangong";
		List<Employee> ED=new ArrayList<Employee>();
		rs=Factory.executeQuery1(sql, null);
		try{
			Employee ed=new Employee();
			ed.setSf_username(rs.getString(1));
			ed.setSf_password(rs.getString(2));
			System.out.println(rs.getString(1)+"  222222222222222");
			ED.add(ed);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return ED;
	}
	/**
	 * 查询角色、权限、状态并排序
	 */
	public List<ActionXG> queryXG(){
		String sql="select y.sf_username,a.id,j.role_id,j.role_name,n.actionid,n.actionName,a.status from Juese j,AA_RRR a,Actionn n,YRoAcRA r,Yuangong y where j.role_id=a.role_id and j.role_name=r.roleName and n.actionid=a.actionid and n.actionName=r.actionName and n.addrices=r.addrices and y.sf_username=r.sf_username order by j.role_id asc";
		/*System.out.println(name+"  "+id+"   queryXG");
		Object[] obj=new Object[]{name,id};*/
		List<ActionXG> axg=new ArrayList<ActionXG>();
		rs=Factory.executeQuery1(sql, null);
		try{while(rs.next()){
			ActionXG xg=new ActionXG();
			xg.setSf_username(rs.getString(1));
			xg.setId(rs.getInt(2));
			xg.setRole_id(rs.getInt(3));
			xg.setRole_name(rs.getString(4));
			xg.setActionid(rs.getInt(5));
			xg.setActionName(rs.getString(6));
			xg.setStatus(rs.getString(7));
			//System.out.println(rs.getString(7)+"     333333333333333333333333");
			axg.add(xg);
		}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return axg;
	}
	/**
	 * 禁用角色的权限
	 */
	public int updateQX(AuthRole ar){
		String sql="update AA_RRR set status=? where id=?";
		Object[]obj=new Object[]{ar.getStatus(),ar.getId()};
		System.out.println(ar.getStatus()+"  "+ar.getId());
		return Factory.executeUpdate(sql, obj);
	}
	
	/**
	 * new权限查询
	 */
	public List<AuthNew> queryAUTH(){
		String sql="select actionid,actionName from Actionn";
		List<AuthNew> aaa=new ArrayList<AuthNew>();
		rs=Factory.executeQuery1(sql, null);
		try{
			while(rs.next()){
				AuthNew ane=new AuthNew();
				ane.setActionid(rs.getInt(1));
				ane.setActionName(rs.getString(2));
				System.out.println(rs.getString(2)+"****************");
				aaa.add(ane);
			}
		}catch(Exception e){
			System.out.println(e.getMessage()+"  aaaaaabbbbbbcccccccccc");
		}
		return aaa;
	}
	
	/**
	 * 插入角色 
	 */
	public boolean addrole(String[] rightsid, String rolename) {
		String sql2="select * from Juese where role_name=?";
		Object params[]={rolename};
		List<Map<String,Object>> xian=executeQuery(sql2, params);
		if(xian.size()>0){return false;}
		 String	sql="insert into Juese(role_name) values(?)";
		 executeUpdate(sql, params);
		 List<Map<String,Object>> roleyi=executeQuery(sql2, params);
		 int roleid=(Integer) roleyi.get(0).get("role_id");
		 String sql3="insert into AA_RRR(role_id,actionid) values(?,?)";
		 boolean fan=false;
			for (int i = 0; i < rightsid.length; i++) {
				int rigid=Integer.parseInt(rightsid[i]);
				Object para[]={roleid,rigid};
				fan =executeUpdate1(sql3, para);
			}
			return fan;
		}
	
	/**
	 * 角色-权限查询
	 */
		public List<Map<String, Object>> chaxun(int jioid) {
			int id=jioid;
			System.out.println(id);
			String sql="select * from AA_RRR where role_id=?";
			Object par[]={id};
			List<Map<String, Object>> list=executeQuery(sql, par);
			return executeQuery(sql, par);
			
		}
	
	/**
	 * 修改角色和权限
	 */
		public List<Map<String, Object>> queryId(String jioid){
			String jiaoid=jioid;
			String sql3="select role_id from Juese where role_name=?";
			Object ob[]={jiaoid};
			List<Map<String, Object>> tt=(List<Map<String, Object>>) executeQuery1(sql3, ob);
			
			try{
				while(rs.next()){
					Role r=new Role();
					r.setRole_id(rs.getInt(1));
					tt.add((Map<String, Object>) r);
				}
				
				
				return tt;
			}catch(Exception e){
				System.out.println(e.getMessage()+"  eeeeeeee");
			}
			return null;
		}
	
		/**
		 * 
		 */
		public boolean xiugai(String[] rigid, int dd) {
		int jiaoid=dd;
		String sql2="delete from AA_RRR where role_id=?";
		Object[] obj={dd};
		Factory.executeUpdate1(sql2, obj);
		String sql4="insert into AA_RRR(role_id,actionid) values(?,?)";
		 boolean fan=false;
		 System.out.println(rigid);
			for (int i = 0; i < rigid.length; i++) {
				int rid=Integer.parseInt(rigid[i]);
				Object paramm[]={jiaoid,rid};
				fan =executeUpdate1(sql4,paramm);
			}
		return fan;
	}
	/**
	 * 暂时 未知
	 * @param rolename
	 * @return
	 */
	public List<Map<String, Object>> chachon(String rolename) {
		String sql2="select * from roles where role_name=?";
		Object params[]={rolename};
		return executeQuery(sql2, params);
		 
	}
	/*public List<Map<String, Object>> chaxun(int jioid) {
		// TODO Auto-generated method stub
		return null;
	}*/
}
