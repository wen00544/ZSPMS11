package com.tjzs.pms.po;

import java.io.Serializable;
import java.util.Date;

public class TAritclePo implements Serializable{

	/**
	 * 网络唯一标识符
	 */
	private static final long serialVersionUID = -634583237626000728L;
	//文章id
	private int id;
	//标题名
	private String  title;
	//内容
	private String  content;
	//作者
	private int   author;
	//创建时间
	private Date crtime;
	//栏目名称
	private TChannelPo channel;//关联对象  一对一
	//是否推荐
	private int isremod;
	//显示字段
	private String  isremodTex;
	
	public String getIsremodTex() {
		if (isremod==1) {
			return "是推荐";
		}else{
			return "不是推荐";
			
		}
		
	}
	
	//是否热点
	private int ishot;
	//显示字段
	private String ishotTxt;
	
	public String getIshotTxt() {
		if (ishot==1) {
			return "是热点";
		} else {
			return "不是热点";
		}
	}
	

	//修改人
	private int updator;
	//修改时间
	private Date updetime;
	
	public int getUpdator() {
		return updator;
	}
	public void setUpdator(int updator) {
		this.updator = updator;
	}
	public Date getUpdetime() {
		return updetime;
	}
	public void setUpdetime(Date updetime) {
		this.updetime = updetime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getAuthor() {
		return author;
	}
	public void setAuthor(int author) {
		this.author = author;
	}
	public Date getCrtime() {
		return crtime;
	}
	public void setCrtime(Date crtime) {
		this.crtime = crtime;
	}
	
	public TChannelPo getChannel() {
		return channel;
	}
	public void setChannel(TChannelPo channel) {
		this.channel = channel;
	}
	public int getIsremod() {
		return isremod;
	}
	public void setIsremod(int isremod) {
		this.isremod = isremod;
	}
	public int getIshot() {
		return ishot;
	}
	public void setIshot(int ishot) {
		this.ishot = ishot;
	}

	
}
