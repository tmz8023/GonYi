package com.daozkj;

import java.util.List;

import com.faqixiangmuzkj.Faqixiangmu;
import com.reviewprojectzkj.Reviewproject;

public interface Dao {
//	public void adduser(User uu);
		
	//public String  loginpass(Login ll);
	public void addproject(Faqixiangmu ff);
	public List<Reviewproject> queryprogect();
	public void addapplyjijin(Found ff);
	public List<Found> queryFound();
	public List<Faqixiangmu> queryqiantaiwodeprogect(Person p); 
	public void updateproject(Idea idea);
	public void updateprojectstatus(Idea ide);
	public String queryusername(String name);//查找用户的真是姓名
	public void adddonation(Donation dd);
	public void addincome(Donation dd);
	public String queryhtzhname(String name);
	public void updateshenhe(Idea id);
	public void updatemoney(Idea id);
}
