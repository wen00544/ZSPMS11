package com.tjzs.pms.po;

import java.io.Serializable;

/**角色表Po
 * @author Administrator
 *
 */
public class TRolePo implements Serializable {

	/**
	 * 网络标识
	 */
	private static final long serialVersionUID = -6538661189048109762L;
	
	//角色id
	private int id ;
	//角色名
	private String rname;
	//生成全部的setter和getter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	
}
