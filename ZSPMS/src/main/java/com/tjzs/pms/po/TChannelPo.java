package com.tjzs.pms.po;

import java.io.Serializable;

public class TChannelPo implements Serializable {

	/**
	 * 网络唯一标识符
	 */
	private static final long serialVersionUID = -4748036755066731998L;
	//栏目id
	private int  id;
	//栏目名
	private String  cname;
	//上级栏目
	private int pid;
	//级别
	private int lev;
	//是否叶子
	private int isleaf;
	//顺序
	private int sort;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getIsleaf() {
		return isleaf;
	}
	public void setIsleaf(int isleaf) {
		this.isleaf = isleaf;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	

	
}
