package com.SZHlssh;

import java.util.List;

public interface Dao {
	public List<lsxm> selectCasee(int startIndex,int maxPage);//��ҳ
	public int getCount();//��ѯ����������
	public void addproject(lsxm xmxm);//����������Ŀ��˱�
	public int update(lsxm xm);//����
	public List<xmsq> select(xmsq en);//��ѯ��Ŀ����
	public void updatestate(int id ,String str);//����������
}
