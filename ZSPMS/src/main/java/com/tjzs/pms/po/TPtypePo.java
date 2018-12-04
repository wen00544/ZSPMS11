package com.tjzs.pms.po;

import java.io.Serializable;

/**商品类别表
 * @author Administrator
 *
 */
public class TPtypePo implements Serializable {
	/**
	 * 网络唯一标识
	 */
	private static final long serialVersionUID = 3590544283195705662L;
	//id
	private int id;
	//类名名称
	private String tname;
	//PID
	private int pid;
	//备注
	private String remark;
	//生成全部的setter 和getter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

}
