package com.tjzs.pms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.service.AritcleService;
import com.tjzs.pms.vo.QueryAritcle;




/**	文章控制层
 * @author Administrator
 *
 */
@Controller //控制器
public class AritcleController {

	@Autowired//注入文章service
	 AritcleService as;
	
	
	@RequestMapping("article/list.do")//二级url
	public String list(QueryAritcle query , String page, ModelMap map){
		//page是空
		if (page==null||"".equals(page)) {
			//默认第一页
			page="1";
		}
		//带回分页数据
		map.addAttribute("list",as.queryByPage(query, Integer.parseInt(page)));
		//带回总页数
		map.addAttribute("pagecount", as.queryPageCount(query));
		//回带当前页数
		map.addAttribute("PAGE", page);
		//回带查询条件
		map.addAttribute("query", query);
		//返回article/list.jsp
		return "article/list";
	}
	
	//删除一条
	@RequestMapping("/article/delete.do")
	public String delete(int id ){
		try {
			as.delete(id);
		} catch (AppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//跳转指定url上，不需要传参
		return "redirect:list.do";
	}
	//删除多条
	@RequestMapping("/article/deletes.do")
	public String deletes(int[] ids ){
		as.deleteByIds(ids);
		//跳转指定url上，不需要传参
		return "redirect:list.do";
	}
	//添加展示

	
	
}
