package com.tjzs.pms.po;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.data.repository.util.NullableWrapper;

import com.tjzs.pms.utils.DateUtil;

/**
 * 用户Po
 * @author Administrator
 *
 */
public class TUserPo implements Serializable {

	/**
	 * 网络标识符
	 */
	private static final long serialVersionUID = -8203581116852964114L;
	//用户id
	private int  id;
	//登录名
	private String loginname;
	//密码
	private String  password;
	//性别
	private String  sex;
	//出生日期
	private Date birthday;
	//用于显示日期
	private String  birthdayTxt;
	public String getBirthdayTxt() {
		return DateUtil.getDateToStr(birthday, "yyyy-MM-dd");
	}

	//邮箱
	private String email;
	//部门
	private TDeptPo dept;//关联对象  一对一
	//真实姓名
	private String   realname;
	//创建人
	private int  creator;
	//创建日期
	private Date creatime;
	//修改人
	private int  updator;
	//修改日期
	private  Date updatime;
	//头像
	private String  pic;
	//是否可用
	private int  isenabled;
	//显示字段
	private String isenabledTxt;
	//生成getter方法
	public String getIsenabledTxt() {
		if (isenabled==1) {
			return "可用";
		}else{
			return "不可用";
		}
		
	}


	//关联权限列表
	private List<TPermissionPo> permissino; //一对多
	//左侧菜单 ，由permissino整理出来
	private List<TPermissionPo> menu=new ArrayList<>();
	
	/**整理菜单  生成  menu getter方法
	 * @return
	 */
	public List<TPermissionPo> getMenu() {
		menu.clear();
		for(TPermissionPo pr:permissino){
			//一级菜单
			if (pr.getPid()==0) {
				pr.getChilden().clear();
				
				//遍历二级菜单
				for(TPermissionPo pr2:permissino){
					//一级菜单的id==二级菜单的pid
					//说明该权限是一级菜单的子权限
					if (pr.getId()==pr2.getPid()) {
						pr.getChilden().add(pr2);
					}
				}
				menu.add(pr);
			}
			
		}
		return menu;
	}

	
	//显示字段
	private String sexTXT;
	//生成sexTxt的getter方法
	public String getSexTXT() {
	//根据现有数据来显示不同的数据
		if("1".equals(sex)){
			
			return "男";
		}else{
			
			return "女";
			
		}
		
	}
	
	
	
	//生成全部的setter和getter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoginname() {
		return loginname;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public TDeptPo getDept() {
		return dept;
	}
	public void setDept(TDeptPo dept) {
		this.dept = dept;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public int getCreator() {
		return creator;
	}
	public void setCreator(int creator) {
		this.creator = creator;
	}
	public Date getCreatime() {
		return creatime;
	}
	public void setCreatime(Date creatime) {
		this.creatime = creatime;
	}
	public int getUpdator() {
		return updator;
	}
	public void setUpdator(int updator) {
		this.updator = updator;
	}
	public Date getUpdatime() {
		return updatime;
	}
	public void setUpdatime(Date updatime) {
		this.updatime = updatime;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getIsenabled() {
		return isenabled;
	}
	public void setIsenabled(int isenabled) {
		this.isenabled = isenabled;
	}
	public List<TPermissionPo> getPermissino() {
		return permissino;
	}
	public void setPermissino(List<TPermissionPo> permissino) {
		this.permissino = permissino;
	}
	

	
}
