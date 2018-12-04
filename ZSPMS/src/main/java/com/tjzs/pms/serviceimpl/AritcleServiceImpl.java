package com.tjzs.pms.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tjzs.pms.dao.AritcleDao;
import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.po.TAritclePo;
import com.tjzs.pms.service.AritcleService;
import com.tjzs.pms.utils.Constants;
import com.tjzs.pms.utils.MD5;
import com.tjzs.pms.vo.QueryAritcle;
@Service//注入业务
@Transactional //该业务支持事务
public class AritcleServiceImpl implements AritcleService{
@Autowired	//注入dao
	private AritcleDao ad;

	@Override
	//通过条件查询
	public List<TAritclePo> queryByCon(QueryAritcle query) {
		// TODO Auto-generated method stub
		return ad.queryByCon(query);
	}

	@Override
	//根据主键查询
	public TAritclePo queryById(int id) {
		
		return ad.queryById(id);
	}

	@Override
	//新增
	@Transactional(rollbackFor=Exception.class)//有异常就回滚否则提交
	public int insert(TAritclePo aritcle) throws AppException{
		// TODO Auto-generated method stub
		return ad.insert(aritcle);
	}

	@Override
	//修改
	@Transactional(rollbackFor=Exception.class)//有异常就回滚否则提交
	public void update(TAritclePo aritcle) throws AppException{
	
		ad.update(aritcle);
	}

	@Override
	//删除一条
	@Transactional(rollbackFor=Exception.class)//有异常就回滚否则提交
	public int delete(int id)throws AppException {
		// TODO Auto-generated method stub
		return ad.delete(id);
	}

	@Override
	//删除多条
	@Transactional(rollbackFor=Exception.class)//有异常就回滚否则提交
	public void deleteByIds(int[] ids) {
		if (!"".equals(ids)&& ids!=null){
			ad.deleteByIds(ids);
		}
		
		
	}

	@Override
	//查询总条数
	public int queryPageCount(QueryAritcle query) {
		//获得总条数
		int count=ad.queryByCount(query);
		//能整除
		if (count%Constants.PAGECOUNT==0) {
			return count/Constants.PAGECOUNT;
		} else {
			//不能整除
			return count/Constants.PAGECOUNT+1;
		}
	}

	@Override
	//查分页
	public List<TAritclePo> queryByPage(QueryAritcle query, int page) {
		//将当前页设置到条件中
				query.setPage(page);
				return ad.queryByPage(query);
	}

}
