package com.YXcexpend;

import java.util.List;

import com.YXexpend.entity.Apply;
import com.YXexpend.entity.Expend;
import com.YXexpend.entity.Jijin;
import com.YXexpend.entity.Xm;

public interface Dao {
	public List<ZhiChu>query();//֧�������б��ѯ
	public List<ZhiChu>query1(ZhiChu z);//����֧����ѯ
	public int summoney();//֧���ܽ���ѯ
	public List<Apply>query2();//֧�������ѯ
	public List<Apply>query3(Apply a);//����֧�������ѯ
	public int deleteexpend(Expend ee);//ɾ��֧������
	
	public int updatesh(Jijin jj);                           //����������״̬
	public int addstatus(Jijin j);     //��˽�����뵽���ݿ�
	public String personname(String name);//��̨���ݵ�¼��������������
	public List<Zhi>zz();//��ѯ��Ҫ�ſ����Ŀ
	public int addzhichu(ZhiChu zz);  //Ǯ���뵽���ݿ�֧����
	
	public int addgeren(Ren r);//������֤��Ϣ��ӵ����ݿ�
	public List<Ren>rr();//��ѯ������֤��Ϣ
	public int update(Ren ee);//��˸�����֤
	public int addren(Ren e);//��˽�����뵽���ݿ�
	
	public List<Xm>chaxun(Xm xx); //����id��ѯ��Ŀ����
	
	public int smoney();//��ʾʣ����ܽ��
	
	public int queryjuanmoney(int id);//����Ѿ����ܽ��(ÿ����Ŀ��
	public int queryshenpi(int id);//�����Ľ��
	public void updateshengxia(int shengxia,int id);//ʣ�µĽ��
	public void updatelzstatus(int id,String status);//���·ſ��״̬
	public void updateyimoney( int id,int yimoney);
}
