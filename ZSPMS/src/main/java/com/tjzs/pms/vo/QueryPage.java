package com.tjzs.pms.vo;

import org.apache.tomcat.util.bcel.classfile.Constant;

import com.tjzs.pms.utils.Constants;

/**
 * 分页
 * @author Administrator
 *
 */
public class QueryPage {
	//起始页数，可继承
	protected int start;
	//截止数
	protected int end;
	//当前页
	protected int page;
	//生成全部的setter和getter
	/**计算起始数
	 * @return
	 */
	public int getStart() {
		//（当前页-1）*每页条数+1
		return (page-1)*Constants.PAGECOUNT+1;
	}
	public void setStart(int start) {
		this.start = start;
	}
	/**计算截止数
	 * @return
	 */
	public int getEnd() {
		//当前页* 每页条数
		return page*Constants.PAGECOUNT;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
}
