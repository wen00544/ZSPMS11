package com.tjzs.pms.service;

import java.util.List;

import com.tjzs.pms.po.TDeptPo;

public interface DeptService {
	//根据上级id取部门表的id
	public List<TDeptPo> queryByPid(int pid);
	
}
