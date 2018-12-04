package com.tjzs.pms.service;

import java.util.List;

import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.po.TAritclePo;
import com.tjzs.pms.vo.QueryAritcle;



public interface AritcleService {

		//通过条件查询
		public List<TAritclePo> queryByCon(QueryAritcle query);
		//根据主键查询
		public TAritclePo queryById(int id );
		//新增
		public int insert(TAritclePo aritcle)throws AppException;
		//修改
		public void  update(TAritclePo aritcle)throws AppException;
		//删除
		public int delete(int id )throws AppException;
		//批量删除
		public void deleteByIds(int[] ids);
		//查询总页数
		public int  queryPageCount(QueryAritcle query);
		//查分页
		public List<TAritclePo> queryByPage(QueryAritcle query, int page);
}
