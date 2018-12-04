package com.tjzs.pms.dao;

import java.util.List;

import com.tjzs.pms.po.TUserPo;
import com.tjzs.pms.vo.QueryUser;

/**
 * 用户表数据接口
 * @author Administrator
 *
 */
public interface UserDao {
	
	//通过条件查询
	public List<TUserPo> queryByCon(QueryUser query);
	//根据主键查询
	public TUserPo queryById(int id);
	//批量删除
	public void deleteByIds(int[] ids);
	//修改
	public void update(TUserPo user);
	//新增
	public int insert(TUserPo user);
	//查询总条数
	public int queryByCount(QueryUser query);
	//删除一条
	public int delete(int id );
	//查分页
	public List<TUserPo> queryByPage(QueryUser query);
}
