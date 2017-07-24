package com.TMZfenye;

import java.util.List;



public class fenyeService {
	private fenyeDao cd=new fenyeDao();
	/**
	 * 每页显示数量、总页码、总条数
	 * @param currPage
	 * @param pageSize
	 * @return
	 */
	public util select(Integer currPage, Integer pageSize){
		currPage = currPage == null?1:currPage;
		currPage = currPage == 0?1:currPage;
		pageSize = pageSize == null?2:pageSize;
		int startIndex = (currPage-1)*pageSize;
		List list=cd.selectCasee(startIndex, pageSize);
		int total = cd.getCount();
		util util = new util();
		util.setRows(list);
		util.setTotal(total);
		util.setPage(pageSize);
		util.setCurrPage(currPage);
		return util;
		
	}
}
