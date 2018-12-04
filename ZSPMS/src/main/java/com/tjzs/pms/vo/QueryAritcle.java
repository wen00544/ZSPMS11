package com.tjzs.pms.vo;

public class QueryAritcle extends QueryPage{
	//标题
	private String  title;
	//作者
	private int   author;
	//是否推荐
	private int isremod;
		
	public int getIsremod() {
		return isremod;
	}
	public void setIsremod(int isremod) {
		this.isremod = isremod;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getAuthor() {
		return author;
	}
	public void setAuthor(int author) {
		this.author = author;
	}

	
}
