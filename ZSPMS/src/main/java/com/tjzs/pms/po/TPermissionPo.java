package com.tjzs.pms.po;

import java.io.Serializable;
import java.util.ArrayList;
/**
*权限表Po
**/
import java.util.List;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;

import freemarker.template.utility.NormalizeNewlines;
public class TPermissionPo implements Serializable{

	/**
	 * 网络标识
	 */
	
	private static final long serialVersionUID = -7002500503193493884L;
	//id
	private int  id;
	//权限名
	private String	pname;
	//上级id
	private int pid;
	//层级
	private int lev;
	//是否叶子
	private int isleaf;
	//顺序
	private int sort;
	//地址
	private String url;
	//图标
	private String  icon;
	//子权限集
	private List<TPermissionPo > childen=new ArrayList<>();
	
	//生成全部的setter和getter
	public List<TPermissionPo> getChilden() {
		return childen;
	}
	public void setChilden(List<TPermissionPo> childen) {
		this.childen = childen;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	
}
