package com.zkjAction;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ZKJdao.Donation;
import com.ZKJdao.Faqixiangmu;
import com.ZKJdao.Gou;
import com.ZKJdao.Idea;
import com.ZKJdao.Person;
import com.ZKJdao.Shixian;
import com.reviewprojectzkj.Reviewproject;

public class ZkjAction{
	private File ssfile;
	private String ssfileFileName;

	public File getSsfile() {
		return ssfile;
	}
	public void setSsfile(File ssfile) {
		this.ssfile = ssfile;
	}

	public String getSsfileFileName() {
		return ssfileFileName;
	}
	public void setSsfileFileName(String ssfileFileName) {
		this.ssfileFileName = ssfileFileName;
	}
	/*
	 * ���������Ŀ������뵽���ݿ�
	 */
	public String Faqiservlet(){
		System.out.println(ssfile.length());
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		//HttpServletResponse response=ServletActionContext.getResponse();
		try{
		request.setCharacterEncoding("utf-8");
		}catch(Exception e){
			System.out.println(e.getMessage()+":Faqiservlet");
		}
		String entryname=request.getParameter("entryname");
		Shixian shi=new Shixian();
		String username=(String)session.getAttribute("name");
		String proposer=shi.queryprojectapplycant(username);
		//String proposer=request.getParameter("proposer");
		String reason=request.getParameter("reason");
		int amount=Integer.parseInt(request.getParameter("amount"));
		String projecttype=request.getParameter("projecttype");
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dd=df.format(new Date());
		String fa=request.getParameter("finals");
		String lujing=null;
		try{
		InputStream is=new FileInputStream(ssfile);
		String path="D:\\tomcat\\Tomcat 6.0\\webapps\\GongYi\\bootstrap\\images\\";
		String paths="D:\\tomcat\\Tomcat 6.0\\webapps\\Houtai1\\bootstrap\\images\\";
		String prffix=ssfileFileName.substring(ssfileFileName.lastIndexOf("."));
		String proname=new Date().getTime()+prffix;
		OutputStream os=new FileOutputStream(new File(path +proname));
		OutputStream ops=new FileOutputStream(new File(paths+proname));
		byte[] b=new byte[1024];
		int n=0;
		while((n=is.read(b))>0){
			os.write(b,0,n);
			ops.write(b,0,n);
		}
		lujing="images\\"+proname;
		System.out.println(lujing+"lujingh");
		os.flush();
		ops.flush();
		ops.close();
		is.close();
		os.close();
		}catch(Exception e){
			System.out.println("jing catch le");
			System.out.println(e.getMessage());
		}
		
		
		System.out.println(lujing+"oolujing");
		Faqixiangmu ff=new Faqixiangmu();
		ff.setEntryname(entryname);
		ff.setProposer(proposer);
		ff.setReason(reason);
		ff.setAmount(amount);
		ff.setProjecttype(projecttype);
		ff.setTime(dd);
		ff.setFinals(fa);
		ff.setLujing(lujing);
		Shixian ss=new Shixian();
		ss.addproject(ff);
		//System.out.println(ff.getEntryname()+ff.getReason()+ff.getTime());
		//request.getRequestDispatcher("bootstrap/success.jsp").forward(request, response);
		return "ok";
	}
	/*
	 * ����Ŀ��Ŀ��������ݿ��ó�����ʾ����̨��˽���
	 */
	public String Reviewprojectservlet(){
		HttpServletRequest request=ServletActionContext.getRequest();
		//HttpServletResponse response=ServletActionContext.getResponse();
		//HttpSession session=request.getSession();
		try{
		request.setCharacterEncoding("utf-8");
		
		Shixian ss=new Shixian();
		List<Reviewproject> listr=ss.queryprogect();
		System.out.println("listrde changdu"+listr.size());
		request.setAttribute("list", listr);
		//session.setAttribute("list", listr);
	//	System.out.println("listrdesize:"+listr.size());
		/*request.setAttribute("list", listr);
		request.getRequestDispatcher("publicProgram.jsp").forward(request, response);*/
		}catch(Exception e){
			System.out.println(e.getMessage()+"Reviewprojectservlet");
		}
		return "rs";
	}
	/*
	 * ����˵�������µ����ݿ�  �������ݿ�����һ��δ��˵���Ŀ��ʾ����˽���
	 */
	public String Projectreviewservlet(){
		HttpServletRequest request=ServletActionContext.getRequest();
		try{
		request.setCharacterEncoding("utf-8");
		}catch(Exception e){
			System.out.println(e.getMessage()+"Projectreviewservlet");
		}
		Shixian ss=new Shixian();
		List<Reviewproject> listr=ss.queryprogect();
		int id=listr.get(0).getId();
		String status=request.getParameter("opinion");
		String shenherenname=request.getParameter("personname");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String shdate=sdf.format(new Date());
		Idea idea=new Idea();
		idea.setId(id);
		idea.setShdate(shdate);
		idea.setShenherenname(shenherenname);
		idea.setStatus(status);
		Idea ide=new Idea();
		ide.setId(id);
		ide.setStatus(status);
		Shixian shi=new Shixian();
		shi.updateproject(idea);
		shi.updateprojectstatus(ide);
		return "review1";
	}
	/*
	 * �û���ѯ�Լ��������Ŀ
	 */
	public String Qiantaiwodeproject(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		try{
		request.setCharacterEncoding("utf-8");
		}catch(Exception e){
			System.out.println(e.getMessage()+"Qiantaiwodeproject");
		}
		String name=(String)session.getAttribute("name");
		Shixian ss=new Shixian();
		String name1=ss.queryusername(name);
		System.out.println(name+""+"a");
		Person p=new Person();
		p.setZhenming(name1);
		List<Faqixiangmu> listw=ss.queryqiantaiwodeprogect(p);
		request.setAttribute("list", listw);
		System.out.println(listw.size());
		//request.getRequestDispatcher("myxiangmu.jsp").forward(request, response);
		
		return "wode";
	}
	
	/*public String wode(){
		HttpServletRequest request=ServletActionContext.getRequest();
		//HttpServletResponse response=ServletActionContext.getResponse();
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		try{
			System.out.println(username+"ss");
		session.setAttribute("name",username);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return "haha";
	}*/
	/*
	 *�����˾�Ŀ���뵽���ݿ�
	 */
	public String addjuankuan(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		Shixian shi=new Shixian();
		String zhname=(String)session.getAttribute("name");
		
		//String zhname=shi.queryusername(name);
		//String projectname=request.getParameter("");
		/*String zhname="ŷ�ƶ�";*/
		String id=request.getParameter("id");
		System.out.println("is   id shi"+id);
		int money=Integer.parseInt(request.getParameter("money"));
		SimpleDateFormat ff=new SimpleDateFormat("yyyy-MM-dd");
		String donationtime=ff.format(new Date());
		Donation dd=new Donation();
		dd.setDonationtime(donationtime);
		dd.setMoney(money);
		dd.setIidd(id);
		dd.setZhname(zhname);
		shi.adddonation(dd);
		//System.out.println(name);
		//String name=session.getAttribute("name");
		//System.out.println(name);
		return "add";
	}
	/*
	 * �ѱ��˾�Ŀ���ʾ���������ȷ��
	 */
	public String finanaceconfirm(){
		HttpServletRequest request=ServletActionContext.getRequest();
		Shixian ss=new Shixian();
		List<Donation> listd=ss.querydonation();
		request.setAttribute("list",listd);
		return "firm";
	}
	/*
	 * �Ѳ���ȷ�Ϲ��ľ��¼�뵽���ݿ�
	 */
	public String income(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		String name=(String)session.getAttribute("name");//���ݺ�̨��¼���û���
		
		
		Shixian ss=new Shixian();
		List<Donation> listd=ss.querydonation();
		String incomename=ss.queryhtzhname(name);//����Ա������ʵ����
		System.out.println(incomename);
		String status="Ǯ�ѵ���";
		Donation dd=new Donation ();
		SimpleDateFormat ff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String asd=ff.format(new Date());
		dd.setDonationtime(asd);
		dd.setID(listd.get(0).getID());
		dd.setIncomename(listd.get(0).getZhname());//����Ǯ���û�����
		dd.setMoney(listd.get(0).getMoney());
		dd.setProjectname(listd.get(0).getProjectname());
		dd.setStatus(status);
		dd.setZhname(incomename);//����Ա������ʵ����
		ss.addincome(dd);
		return "income";
		
	}
	/*
	 *��������֤����Ϣ¼�뵼���ݿ���
	 */
	private File  proFile;
    private String proFileFileName;
	
	
	public String uploadfile(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("name");
		Shixian ss=new Shixian();
		String name=ss.queryusername(username);
		String jigouquancheng=request.getParameter("ursename");
		String dianhua=request.getParameter("name");
		//String address=request.getParameter("");//���ڻ���ȡ����
		String xingzhi=request.getParameter("work");
		String founddate=request.getParameter("data");
		String faren=request.getParameter("faren");
		String idcard=request.getParameter("ID_number");
		//int iphone=Integer.parseInt(request.getParameter("phone"));
		String jigoujianjie=request.getParameter("summary");
		String logo=null;
		try{
		InputStream is=new FileInputStream(proFile);
		String path="D:\\tomcat\\Tomcat 6.0\\webapps\\GongYi\\bootstrap\\images\\";
		String paths="D:\\tomcat\\Tomcat 6.0\\webapps\\Houtai1\\bootstrap\\images\\";
		System.out.println(path);
		String prffix=proFileFileName.substring(proFileFileName.lastIndexOf("."));
		String proname = new Date().getTime() + prffix;
		OutputStream os=new FileOutputStream(new File(path+proname));
		OutputStream ops=new FileOutputStream(new File(paths+proname));
		byte[] b=new byte[1024];
		int n=0;
		while((n=is.read(b))>0){
			os.write(b,0,n);
			ops.write(b,0,n);
		}
		logo="images\\"+proname;
		System.out.println(logo);
		ops.close();
		is.close();
		os.close();
		}catch(Exception e){
			System.out.println(e.getMessage()+"uploadfile");
		}
		Gou gg=new Gou();
		gg.setDianhua(dianhua);
		gg.setFaren(faren);
		gg.setFounddate(founddate);
		gg.setIdcard(idcard);
		//gg.setIphone(iphone);
		gg.setJigoujianjie(jigoujianjie);
		gg.setJigouquancheng(jigouquancheng);
		gg.setLogo(logo);
		gg.setXingzhi(xingzhi);
		gg.setName(name);
		ss.updatejigourenzheng(gg);
		return "upload";
	}
	

	public File getProFile() {
		return proFile;
	}
	public void setProFile(File proFile) {
		this.proFile = proFile;
	}
	public String getProFileFileName() {
		return proFileFileName;
	}
	public void setProFileFileName(String proFileFileName) {
		this.proFileFileName = proFileFileName;
	}
	/*
	 * ��֤������������û����֤
	 */
	public String queryrenzheng(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		Shixian ss=new Shixian();
		//String geren=ss.querygerenrenzheng(name);
		String names=ss.queryprojectapplycant(name);
		String jigou=ss.queryjigouquancheng(names);
		System.out.println(jigou+"jigouname");
		if(jigou!=null){
			return "yirenzheng";
		}
		
		request.setAttribute("ss","�������֤");
		
		return "renzheng";
	}
	public String querydonationrenzheng(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		Shixian ss=new Shixian();
		//String geren=ss.querygerenrenzheng(name);
		String names=ss.queryprojectapplycant(name);
		String jigou=ss.queryjigouquancheng(names);
		System.out.println(jigou+"jigouname");
		if(jigou!=null){
			return "yijingrenzheng";
		}
		
		request.setAttribute("ss","�������֤");
		
		return "weirenzheng";
	}
	
}
