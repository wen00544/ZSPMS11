package com.tjzs.pms.dao;

import java.util.List;

import com.tjzs.pms.po.TDeptPo;

public interface DeptDao {
	//根据上级id取部门表的id
	public List<TDeptPo> queryByPid(int pid );
	
}
