package com.YXitem;

import java.util.List;





public interface Dao{
	public int addsq(Xiang xx);   //֧��������ӵ����ݿ�
	public int addgeren(Ren r);//������֤��Ϣ��ӵ����ݿ�
	public String sumoney(String name);//��ʾ����������
	public List<ZhiChu>query(String name); //��ʾ֧��
	
	public int queryjuanmoney(int id);//����Ѿ����ܽ��(ÿ����Ŀ��
	public int queryshenpi(int id);
	public void updateshengxia(int shengxia,int id);
}
