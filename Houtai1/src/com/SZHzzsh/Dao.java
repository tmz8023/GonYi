package com.SZHzzsh;

import java.util.List;

public interface Dao {
	public List<zijin> selectCasee(int startIndex,int maxPage);//��ҳ
	public int getCount();//��ѯ����������
	public void addproject(zijin zjzj);//���������ʽ���˱�
	public int update(zijin zj);//����
	public List<xmsq> select(xmsq en);//��ѯ��Ŀ����
}