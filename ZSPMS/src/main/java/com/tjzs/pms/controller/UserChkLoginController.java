package com.tjzs.pms.controller;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.po.TUserPo;
import com.tjzs.pms.service.UserService;
import com.tjzs.pms.utils.DateUtil;
import com.tjzs.pms.vo.QueryUser;

/** 控制器
 * @author Administrator
 *
 */
@Controller//是一个控制器
public class UserChkLoginController {
	@Autowired //注入业务
	private UserService us;
	
	@RequestMapping("/tologin.do")
	public String tologin(){
		return "login";
	}
	
	
	/** 检测登陆
	 * @param query 登陆名和面
	 * @param map 回答数据
	 * @param session 产生会话
	 * {@code} 验证码
	 * @return 返回的页面
	 */
	@RequestMapping("/login.do")//url
	
	public String login(QueryUser query,ModelMap map, String code,HttpSession session){
		//验证码验证
		//从session中取得keptcha生成验证码
		String ocode=(String) session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		//判断
		if(!ocode.equals(code)){
			//页面回带信息
			map.addAttribute("msg", "验证码输入有误，请重新输入");
			//回到登陆页面
			return "login";
		}
		//验证码相同，检验登陆
		TUserPo user;
		try {
			user = us.chklogin(query);
			System.out.println(user.getPermissino().get(0).getPname());
			session.setAttribute("cuser", user);
			//当前日期

			//返回页面
			return "main";
		//业务异常
		} catch (AppException e) {
			//页面带信息
			map.addAttribute("msg", e.getErrMsg());
			//返回登陆页面
			return "login";
		//系统异常
		}catch (Exception e1) {
			e1.printStackTrace();
			return "error";
		}
	}
	//去top页面
	@RequestMapping("/totop.do")
	public String totop(){
		return "top";
	}
	//去left页面
	@RequestMapping("/toleft.do")
	public String toleft(){
		return "left";
	}
	//去righe页面
	@RequestMapping("/toright.do")
	public String toright(){
		return "right";
	}
	
}