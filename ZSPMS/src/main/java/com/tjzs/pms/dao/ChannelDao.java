package com.tjzs.pms.dao;

import java.util.List;

import com.tjzs.pms.po.TChannelPo;

public interface ChannelDao {

	//根据上级id取部门表的id
	public List<TChannelPo> queryById(int id );
	
}
