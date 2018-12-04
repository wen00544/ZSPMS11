package com.tjzs.pms.po;

import java.io.Serializable;

/**
 * 通用表
 * @author Administrator
 *
 */
public class TcodePo implements Serializable {

	/**
	 * 网络唯一标识符
	 */
	
	private static final long serialVersionUID = 7294858196461244907L;


	//id
	private int  id;
	//类型id
	private int cid;
	//名字
	private String  cname;
	//类型
	private String  type;
	
	//生成全部的setter 和getter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
