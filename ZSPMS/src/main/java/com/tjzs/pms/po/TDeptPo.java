package com.tjzs.pms.po;

import java.io.Serializable;

/** 部门Po
  * @author Administrator
 *
 */
public class TDeptPo implements Serializable{

	/**
	 * 网络标识
	 */
	private static final long serialVersionUID = -5695099495840688339L;
	//部门id
	private int  id;
	//部门名字
	private String  dname;
	//上级id
	private int  pid;
	//生成全部的setter和getter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}

	

}
