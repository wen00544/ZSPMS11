package com.tjzs.pms.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.po.TDeptPo;
import com.tjzs.pms.po.TUserPo;
import com.tjzs.pms.service.DeptService;
import com.tjzs.pms.service.UserService;
import com.tjzs.pms.vo.QueryUser;

/**	用户控制层
 * @author Administrator
 *
 */
@Controller  //控制器
public class UserController {
	@Autowired	//注入userservice
	UserService us ;
	@Autowired //注入部门
	DeptService ds;
	
	@RequestMapping("/user/list.do")//二级url
	public String list(QueryUser query , String page, ModelMap map){
		//page是空
		if (page==null||"".equals(page)) {
			//默认第一页
			page="1";
		}
		//带回分页数据
		map.addAttribute("list",us.queryByPage(query,Integer.parseInt(page)) );
		//带回总页数
		map.addAttribute("pagecount", us.queryPageCount(query));
		//回带当前页数
		map.addAttribute("PAGE", page);
		//会带查询条件
		map.addAttribute("query", query);
		//返回user/list.jsp
		return "user/list";
		
	}
	//添加展示
	@RequestMapping("/user/toadd.do")
	public String toadd(ModelMap map){
		//获得一级部门
		List<TDeptPo> list = ds.queryByPid(0);
		map.addAttribute("Dlist",list);
		//获得一级部门里的二级部门
		List<TDeptPo> dlist1 = ds.queryByPid(list.get(0).getId());
		map.addAttribute("Dlist1", dlist1);
		return "/user/add";
	}
	
	/**
	 * 以ajax方式响应
	 * 方法返回string 直接返回文本
	 * 方法返回对象  返回json格式  自动调用JSONArray
	 * *
	 */
	@RequestMapping("/user/getdept.do")
	@ResponseBody
	public List<TDeptPo> getDept(int pid){
		List<TDeptPo> list = ds.queryByPid(pid);
		return list;
	}
	
	
	/**新增 实现
	 * @return
	 */
	@RequestMapping("user/add.do")
	public String add(TUserPo user, ModelMap map,HttpSession session){
		try {
			//获得session中的用户信息
			TUserPo cuser = (TUserPo)session.getAttribute("cuser");
			user.setCreator(cuser.getId());//创建人
			user.setIsenabled(1);//可用
			
			us.insert(user);
			//跳转指定url上，不需要传参
			return "redirect:list.do";
		} catch (AppException e) {
			map.addAttribute("msg",e.getErrMsg());
			//执行方法，传参
			return this.toadd(map);
		}
	}
	//删除一条
	@RequestMapping("/user/delete.do")
	public String delete(int id ){
		try {
			us.delete(id);
		} catch (AppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//跳转指定url上，不需要传参
		return "redirect:list.do";
	}
	//删除多条
	@RequestMapping("/user/deletes.do")
	public String deletes(int[] ids ){
		us.deleteByIds(ids);
		//跳转指定url上，不需要传参
		return "redirect:list.do";
	}
	//修改显示
	@RequestMapping("/user/get.do")
	public String get(int id , ModelMap map){
		TUserPo user =us.queryById(id);
		map.addAttribute("user", user);
		//获得一级部门
		List<TDeptPo> list = ds.queryByPid(0);
		map.addAttribute("Dlist",list);
		//获得一级部门里的二级部门
		List<TDeptPo> dlist1 = ds.queryByPid(user.getDept().getPid());
		map.addAttribute("Dlist1", dlist1);
		return "/user/update";
	}
	//修改
	@RequestMapping("/user/update.do")
	public String update(TUserPo user, HttpSession session,ModelMap map){
		//获得session中的用户信息
		TUserPo cuser = (TUserPo) session.getAttribute("cuser");
		user.setUpdator(cuser.getId());
		try {
			us.update(user);
			return "redirect:list.do";
		} catch (AppException e) {
		map.addAttribute("msg",e.getErrMsg());
			return get(user.getId(), map);
		}
		
	}
	
}
