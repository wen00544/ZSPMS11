package com.tjzs.pms.test.user;

import java.util.Date;

import org.apache.coyote.http11.filters.VoidInputFilter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.po.TAritclePo;
import com.tjzs.pms.po.TDeptPo;
import com.tjzs.pms.po.TUserPo;
import com.tjzs.pms.po.TChannelPo;
import com.tjzs.pms.service.AritcleService;
import com.tjzs.pms.vo.QueryAritcle;
import com.tjzs.pms.vo.QueryUser;

@RunWith(SpringJUnit4ClassRunner.class)//使用spring测试框架
@ContextConfiguration("classpath:applicationcontext.xml")//引入配置文件
public class TestAritcle {
	@Autowired
	AritcleService as;
	
	public void testQueryByCon(){
	QueryAritcle ar = new QueryAritcle();
	ar.setTitle("锄禾日当午");
	ar.setAuthor(1);
	as.queryByCon(ar);
	  
	
	}
	@Test
	public void testQueryById(){
	 TAritclePo tar=	as.queryById(3000);
		System.out.println(tar.getChannel().getCname());
	}
	
	
	public void testadd(){
		TAritclePo ta = new TAritclePo();
		
		ta.setTitle("asfjagk");
		TChannelPo tchannel = new TChannelPo();
		tchannel.setId(2);
		ta.setChannel(tchannel);
		ta.setAuthor(2);
		ta.setContent("chifag");
		ta.setIshot(2);
		ta.setIsremod(3);
		
		try {
			as.insert(ta);
		} catch (AppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void testDeleteIds(){
		
		int [] ids ={3119,3002};
		as.deleteByIds(ids);
	}
	
	public void testDelete(){
		
		int  id =3001;
		try {
			as.delete(id);
		} catch (AppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void testUpdate(){
		TAritclePo ta = new TAritclePo();
		ta.setId(3000);
		ta.setTitle("赵晕");
		
		TChannelPo tchannel = new TChannelPo();
		tchannel.setId(3);
		ta.setChannel(tchannel);
		
		ta.setAuthor(1);
		ta.setContent("吃和");
		ta.setIshot(1);
		ta.setIsremod(-1);
		ta.setUpdator(3);
		try {
			as.update(ta);
		} catch (AppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void testPage(){
		QueryAritcle query = new QueryAritcle();
		query.setIsremod(-1);
		System.out.println("当前总页数："+as.queryPageCount(query));
		for(TAritclePo tar :as.queryByPage(query, 1)){
			System.out.println(tar.getTitle());
		}
	}
}
