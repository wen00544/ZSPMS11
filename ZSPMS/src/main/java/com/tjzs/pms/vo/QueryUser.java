package com.tjzs.pms.vo;

/**
 * 用户对象查询
 * @author Administrator
 *
 */
public class QueryUser extends QueryPage {
	//登录名
	private String loginname;
	//密码		
	private String  password;
	//是否可用
	private int  isenabled;
	//性别
	private String sex;
	
	//生成setter 和getter
	
	
	
	public String getLoginname() {
		return loginname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getIsenabled() {
		return isenabled;
	}
	public void setIsenabled(int isenabled) {
		this.isenabled = isenabled;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
