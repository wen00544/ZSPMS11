package com.tjzs.pms.service;

import java.util.List;

import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.po.TUserPo;
import com.tjzs.pms.vo.QueryUser;

public interface UserService {

	//登陆
	public TUserPo chklogin(QueryUser query )throws AppException;
	//通过条件查询
	public List<TUserPo> queryByCon(QueryUser query );
	//批量删除
	public void deleteByIds(int[] ids);
	//修改
	public void update(TUserPo user)throws AppException;
	//新增
	public int insert(TUserPo user)throws AppException;
	//删除一条
	public void delete(int id)throws AppException;
	//查询总条数
	public int queryPageCount(QueryUser query);
	//通过id查询
	public TUserPo queryById(int id );
	//查询分页
	public List<TUserPo> queryByPage(QueryUser query, int page);
	
}
