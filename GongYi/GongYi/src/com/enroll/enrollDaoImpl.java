package com.enroll;





public class enrollDaoImpl implements enrollDao{

	public int add(enroll el) {
		String str="insert into Yonghu values(?,?,?,?,?,?,?,?)";
		Object[] obj=new Object[]{el.getEnroll_name(),el.getEnroll_pass(),el.getEnroll_spass(),el.getEnroll_gender(),el.getEnroll_carid(),el.getEnroll_sname(),el.getEnroll_phone(),el.getEnroll_email()};
		return DaoFactory.executeUpdate(str, obj);
	}

}
