package com.tjzs.pms.po;

import java.io.Serializable;

/**
 * 商品图片表
 * @author Administrator
 *
 */
public class TppicPo implements Serializable {
	/**
	 * 网络唯一标识符
	 */
	private static final long serialVersionUID = 7903736979420438080L;
	


	//id
	private int id;
	//商品ID
	private int pid;
	//图片URL
	private String picurl;
	//是否默认
	private int isdefault;
	//生成全部的setter 和getter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPicurl() {
		return picurl;
	}
	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}
	public int getIsdefault() {
		return isdefault;
	}
	public void setIsdefault(int isdefault) {
		this.isdefault = isdefault;
	}

}
