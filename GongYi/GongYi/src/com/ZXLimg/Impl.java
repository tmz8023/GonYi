package com.ZXLimg;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Util.ConnImpl;


public class Impl implements dao {

	public List<imgInfo> select() {
		String sql="select * from Xmguanli xm,images img where xm.xm_images_Id=img.id";
		ResultSet rs=ConnImpl.executeQuery(sql, null);
		List<imgInfo> lin=new ArrayList<imgInfo>();
		
		try{
			while(rs.next()){
				imgInfo imfo=new imgInfo();
				imfo.setId(rs.getInt(1));
				imfo.setName(rs.getString(2));
				imfo.setContent(rs.getString(3));
				imfo.setImg(rs.getString(4));
				imfo.setDate(rs.getString(5));
				imfo.setFinals(rs.getString(6));
				imfo.setImgId(rs.getInt(7));
				imfo.setImgName(rs.getString(8));
				
				lin.add(imfo);
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
			
		}
		
		return lin;
	}

}
