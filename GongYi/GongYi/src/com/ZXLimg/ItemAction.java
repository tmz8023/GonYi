package com.ZXLimg;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;




public class ItemAction {
	
	SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dd=time.format(new Date());
	
	dao da=new Impl();
	imgInfo nn=new imgInfo();
	ItemInfo itf;
	public ItemInfo getItf() {
		return itf;
	}
	public void setItf(ItemInfo itf) {
		this.itf = itf;
	}  
	
	
	public String select(){
		
		nn.setId(itf.getId());
		nn.setName(itf.getName());
		nn.setContent(itf.getContent());
		nn.setImg(itf.getImg());
		nn.setDate(dd);
		nn.setFinals(itf.getFinals());
		nn.setImgId(itf.getImgId());
		nn.setImgName(itf.getImgName());
		
		
		List<imgInfo> li=da.select();
		HttpSession se=ServletActionContext.getRequest().getSession();
		se.setAttribute("kk", li);
		System.out.println("pp");
		return "sel";

	}


}
