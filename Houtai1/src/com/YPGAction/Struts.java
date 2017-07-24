package com.YPGAction;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.YPGQXAction.ActionXG;
import com.YPGQXAction.Auth;
import com.YPGQXAction.AuthNew;
import com.YPGQXAction.AuthRole;
import com.YPGQXAction.Employee;
import com.YPGQXAction.Role;

public class Struts {
	
	
	//private static final Dao quxb = null;
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpSession session =request.getSession();
	Dao dao=new DaoImpl();
	private String shiname;
	private String shiid;
	private String  rolena;
	private String uname;
	
	
	
	/**
	 * 用户管理的方法
	 * @return
	 */
	/*
	public String save(){
		User us=new User();
		us.setUsername(request.getParameter("username"));
		us.setTurename(request.getParameter("turename"));
		us.setRole(request.getParameter("role"));
		us.setEmail(request.getParameter("email"));
		us.setDate(request.getParameter("date"));
		us.setJoindate(request.getParameter("joindate"));
		
		dao.addUser(us);

		return "save";
	}*/
	
	public String getShiname() {
		return shiname;
	}
	public void setShiname(String shiname) {
		this.shiname = shiname;
	}
	public String getShiid() {
		return shiid;
	}
	public void setShiid(String shiid) {
		this.shiid = shiid;
	}
	public String getRolena() {
		return rolena;
	}
	public void setRolena(String rolena) {
		this.rolena = rolena;
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	
	/**
	 * 添加数据库 数据到后台界面
	 * @return
	 */
	public String select11(){
		List<User> slist=dao.queryStudents();
		session.setAttribute("List", slist);
		return "off";
	}
	/**
	 * 查询一个数据
	 */
	public String queryYPG(){
		User se=new User();
		se.setEnroll_sname(request.getParameter("enroll_sname"));
		//System.out.println(request.getParameter("username")+"33");
		List<User> ff=dao.query(se);
		session.setAttribute("fftt", ff);
		return "que";
		
	}
	
	
	/**
	 * 员工管理的方法
	 * @return
	 * 查询数据库 数据
	 */
	public String show(){
		List<Employee> list=dao.queryEmployee();
		session.setAttribute("emlist", list);
		return "shlist";
	}
	/**
	 * 员工的单个查询
	 * @return
	 */
	public String queryEmployee(){
		Employee em=new Employee();
		em.setSf_name(request.getParameter("sf_name"));
		List<Employee> ssit=dao.queryEe(em);
		session.setAttribute("ssEmploy", ssit);
		return "employ";
	}
	/**
	 * 增加员工
	 * @return
	 */
	public String addEmployee(){
		Employee em=new Employee();
		em.setSf_number(Integer.parseInt(request.getParameter("sf_number")));
		em.setSf_name(request.getParameter("sf_name"));
		em.setSf_age(Integer.parseInt(request.getParameter("sf_age")));
		em.setSf_gender(request.getParameter("sf_gender"));
		em.setSf_cardId(request.getParameter("sf_cardId"));
		em.setSf_posname(request.getParameter("sf_posname"));
		em.setSf_status(Integer.parseInt(request.getParameter("sf_status")));
		em.setSf_username(request.getParameter("sf_username"));
		em.setSf_password(request.getParameter("sf_password"));
		em.setSf_deptName(request.getParameter("sf_deptName"));
		
		dao.addEmployee(em);
		
		return "empy";
	}
	/**
	 * 员工状态修改
	 * @return
	 */
		public String UpdateEmployee(){
			Employee em=new Employee();
			em.setSf_posname(request.getParameter("sf_posname"));
			em.setSf_status(Integer.parseInt(request.getParameter("sf_status")));
			em.setSf_id(Integer.parseInt(request.getParameter("sf_id")));
			dao.updateEmployee(em);
			
			return "upEmp";
		}
		
		/**
		 * 角色的方法
		 * 查询数据库
		 * @return
		 */
		public String showRole(){
			List<Role> liRole=dao.queryRole();
			session.setAttribute("listRR", liRole);
			return "liRR";
		}
		/**
		 * 角色的增加
		 * @return
		 */
		public String addRole(){
			Role role=new Role();
			role.setRole_name(request.getParameter("role_name"));
			dao.addRole(role);
			return "addle";
		}
		/**
		 * 单个角色的查询
		 * @return
		 */
		public String selectRole(){
			Role role=new Role();
			role.setRole_name(request.getParameter("role_name"));
			List<Role> listRr=dao.selectRole(role);
			session.setAttribute("liRr", listRr);
			return "seleRr";
		}
		
		/**
		 * 权限的方法
		 * 查询数据库
		 * @return
		 */
		public String showAuth1(){
			List<Auth> liAuth=dao.queryAuth();
			session.setAttribute("stAuth", liAuth);
			return "listAuth";
		}
		/**
		 * 权限的增加
		 * @return
		 */
		public String addAuth(){
			Auth auth=new Auth();
			auth.setActionName(request.getParameter("actionName"));
			auth.setAddrices(request.getParameter("addrices"));
			dao.addAuth(auth);
			return "adAuth";
		}
		/**
		 * 权限的查询
		 * @return
		 */
		public String selectAuth(){
			Auth auth=new Auth();
			auth.setActionName(request.getParameter("actionName"));
			List<Auth> list=dao.selectAuth(auth);
			session.setAttribute("liAuth", list);
			return "listAu";
		}
				
		
		/**
		 * 角色修改的 查询
		 * @return
		 */
		public String queryAXG(){
			/*String name=(String)session.getAttribute("name");
			String id=request.getParameter("a");*/
			List<ActionXG> list=dao.queryXG();
			session.setAttribute("roleAxg", list);
			return "AXG";
		}
		/**
		 * 角色权限的禁用
		 * @return
		 */
		public String updateRA(){
			AuthRole aa=new AuthRole();
			aa.setStatus(request.getParameter("status"));
			aa.setId(Integer.parseInt(request.getParameter("id")));
			//String value=request.getParameter("aa");
			//System.out.println(value);
			//String name=request.getParameter("status");
			dao.updateQX(aa);
			return "RAA";
			
		}
		/**
		 * 权限新修订
		 */
		public String NewAuth(){
			String NN=request.getParameter("aa");
			//System.out.println(NN+"   12345679");
			session.setAttribute("ListAuth", NN);
			return "AAK";
		}
		public String NNN(){
			List<AuthNew> list=dao.queryAUTH();
			session.setAttribute("rrr", list);
			return "nnn";
		}
		/**
		 * quanxian
		 * 
		 */
		public void addrole() {
			System.out.println("进来了");
			
			System.out.println(rolena);
			System.out.println(shiid);
			String quanname[]=shiname.split(",");
			String quanid[]=shiid.split(",");
			boolean re=dao.addrole(quanid, rolena);
			if(re){
				try {
					response.getWriter().print(true);
					//super.getResponse().getWriter().print(true);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else {
				try {
					response.getWriter().print(false);
					//super.getResponse().getWriter().print(false);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		
		/**
		 * 
		 */
		public void gaijiao(){
			 int cuid=Integer.parseInt(uname);
			System.out.println(uname);
			List<Map<String, Object>> aa =dao.chaxun(cuid);
			String rids="";
			System.out.println("aasize"+aa.size());
			for (int i = 0; i < aa.size(); i++) {
				System.out.println("i"+i);
				int rid=(Integer)aa.get(i).get("actionid");
				System.out.println(rid);
				rids+=rid+",";
			}
			System.out.println(rids);
			try {
				response.getWriter().print(rids);
				//super.getResponse().getWriter().print(rids);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		/**
		 * @param rid 
		 * 
		 */
		public void zaigai(){
			System.out.println("zaigai");
			int rid=Integer.parseInt(uname);
			String quanid[]=shiid.split(",");
			boolean fu=dao.xiugai(quanid, rid);
			if(fu){
				try {
					response.getWriter().print(true);
					//super.getResponse().getWriter().print(true);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}else{
				try {
					response.getWriter().print(false);
					//super.getResponse().getWriter().print(false);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			
		}
		
}
