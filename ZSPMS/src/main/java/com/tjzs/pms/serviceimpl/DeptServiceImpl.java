package com.tjzs.pms.serviceimpl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tjzs.pms.dao.DeptDao;
import com.tjzs.pms.po.TDeptPo;
import com.tjzs.pms.service.DeptService;
@Service//注入service
public class DeptServiceImpl implements DeptService {
@Autowired//按类型注入
private DeptDao dd; 

	@Override
	//根据上级id取部门表的id
	public List<TDeptPo> queryByPid(int pid) {
		// TODO Auto-generated method stub
		return dd.queryByPid(pid);
	}

	
}
