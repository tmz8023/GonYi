package com.ZXLnews;

import java.util.List;

public interface newsDao {
	public int add(newsInfo nif);/*���*/
	public List<newsInfo> select();/*��ѯ*/
	public List<newsInfo> selectName(String name);/*ģ����ѯ*/
	public int update(newsInfo nif);/*�޸�*/
	public int delete(newsInfo nif);/*ɾ��*/
}
