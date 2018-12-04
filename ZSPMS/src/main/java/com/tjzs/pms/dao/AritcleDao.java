package com.tjzs.pms.dao;

import java.util.List;

import com.tjzs.pms.po.TAritclePo;
import com.tjzs.pms.vo.QueryAritcle;

public interface AritcleDao {

	//通过条件查询
	public List<TAritclePo> queryByCon(QueryAritcle query );
	//根据主键查询
	public TAritclePo queryById(int id );
	//新增
	public int insert(TAritclePo aritcle);
	//修改
	public void update(TAritclePo aritcle);
	//删除
	public int delete(int id );
	//批量删除
	public void deleteByIds(int[] ids);
	//查询总页数
	public int queryByCount(QueryAritcle query);
	//查分页
	public List<TAritclePo> queryByPage(QueryAritcle query);
	
}
