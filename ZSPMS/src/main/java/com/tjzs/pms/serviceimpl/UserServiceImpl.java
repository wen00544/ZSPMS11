package com.tjzs.pms.serviceimpl;

import java.util.List;

import org.apache.logging.log4j.core.appender.AppenderLoggingException;
import org.omg.CORBA.portable.ApplicationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tjzs.pms.dao.UserDao;

import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.po.TUserPo;
import com.tjzs.pms.service.UserService;
import com.tjzs.pms.utils.Constants;
import com.tjzs.pms.utils.MD5;
import com.tjzs.pms.vo.QueryUser;

import net.fckeditor.requestcycle.impl.DisabledUserAction;
@Service
@Transactional //该业务支持事务
public class UserServiceImpl  implements UserService{
	@Autowired
	private UserDao ud;
	
	
	/**
	 * 登陆方法
	 */
	@Override
	public TUserPo chklogin(QueryUser query) throws AppException {
		//将明码变成密码
		MD5 md5 = new MD5();
		//加密后的密码
		String p1 = md5.getMD5ofStr(query.getPassword());
		//将密码放到query中
		query.setPassword(p1);
		
		List<TUserPo> list =ud.queryByCon(query);
		//没有用户
		if(list==null||list.size()!=1){
			throw new AppException("用户名密码有误,请重新输入", 1001);
		}
		//返回第一条数据
		TUserPo user = list.get(0);
		
		return  ud.queryById(user.getId());
	}
	//通过条件查询
	@Override
	public  List<TUserPo> queryByCon(QueryUser query) {
		// TODO Auto-generated method stub
		return  ud.queryByCon(query);
	}
	//批量删除
	@Override
	@Transactional(rollbackFor=Exception.class)//有异常就回滚否则提交
	public void deleteByIds(int[] ids) {
		if (!"".equals(ids)&& ids!=null){
			ud.deleteByIds(ids);
		}
		
		
	}
	//修改
	@Override
	@Transactional(rollbackFor=Exception.class)//有异常就回滚否则提交
	public void update(TUserPo user) throws AppException{
		//不可用
		if (user.getIsenabled()==-1) {
			throw new AppException("不能修改不可用用户", 1003);
		}
		//获得原来的用户
		TUserPo ouser = ud.queryById(user.getId());
		//原密码不等于新密码  才加密
		if (user.getPassword()!=null &&(!"".equals(user.getPassword()))&&!user.getPassword().equals(ouser.getPassword())) {
			//密码加密
			MD5 md5 =new MD5();
			user.setPassword(md5.getMD5ofStr(user.getPassword()));
		}
		ud.update(user);
		
	}
	//新增
	@Override
	@Transactional(rollbackFor=Exception.class)//有异常就回滚否则提交
	public int insert(TUserPo user) throws AppException {
		
		//登陆名不能admin
		if ("admin".equals(user.getLoginname())) {
			throw  new AppException("登陆名不能为admin", 1003); 
		}
		//密码加密
		MD5 md5 =new MD5();
		user.setPassword(md5.getMD5ofStr(user.getPassword()));
		return ud.insert(user);
	}
	//删除一条
	@Override
	@Transactional(rollbackFor=Exception.class)//有异常就回滚否则提交
	public void delete(int id) throws AppException {
		// TODO Auto-generated method stub
		ud.delete(id);
	}
	//计算总页数
	@Override
	public int queryPageCount(QueryUser query) {
		//获得总条数
		int count=ud.queryByCount(query);
		//能整除
		if (count%Constants.PAGECOUNT==0) {
			return count/Constants.PAGECOUNT;
		} else {
			//不能整除
			return count/Constants.PAGECOUNT+1;
		}
		
	}
	//通过id查询
	@Override
	public TUserPo queryById(int id) {
		// TODO Auto-generated method stub
		return ud.queryById(id);
	}
	
	/**
	 * 查询分页
	 * query:条件
	 * page：当前页
	 * */
	public List<TUserPo> queryByPage(QueryUser query, int page) {
		//将当前页设置到条件中
		query.setPage(page);
		return ud.queryByPage(query);
	}

}
