package com.tjzs.pms.test.user;



import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mysql.fabric.xmlrpc.base.Data;
import com.tjzs.pms.exception.AppException;
import com.tjzs.pms.po.TDeptPo;
import com.tjzs.pms.po.TPermissionPo;
import com.tjzs.pms.po.TUserPo;
import com.tjzs.pms.service.UserService;
import com.tjzs.pms.vo.QueryUser;

@RunWith(SpringJUnit4ClassRunner.class)//使用spring测试框架
@ContextConfiguration("classpath:applicationcontext.xml")//引入配置文件
public class TestUser {
@Autowired
UserService us;
@Test
	public void testUserLogin(){
		QueryUser query =new QueryUser();
		query.setLoginname("test1");
		query.setPassword("123");
		try {
			TUserPo user = us.chklogin(query);
			System.out.println(user.getRealname()+"、"+user.getDept().getDname());
			System.out.println("-----------------------------------------");
			for(TPermissionPo pr : user.getPermissino()){
				
				System.out.println(pr.getPname());
			}
			System.out.println("----------------------------------------");
			for(TPermissionPo pr : user.getMenu()){
				System.out.println(pr.getPname());
				for(TPermissionPo pr1 :pr.getChilden()){
					System.out.println("\t\t"+pr1.getPname());
					
				}
			}
			
		} catch (AppException e) {
			System.out.println(e.getErrMsg());
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	
	public void testQueryByCon(){
		QueryUser qu = new QueryUser();
		qu.setLoginname("test1");
		qu.setPassword("202CB962AC59075B964B07152D234B70");
		//qu.setIsenabled(-1);
		//qu.setPage(2);//当前页
		
		us.queryByCon(qu);
	}
	
	public void testDelete(){
		
		int[] ids={3106,3107};
		us.deleteByIds(ids);
	}

	public void testUpdate(){
		TUserPo user = new TUserPo();
		user.setId(3109);
		//user.setBirthday(new Date());
		//部门
		TDeptPo dept = new TDeptPo();
		dept.setId(4);
		//user.setDept(dept);
		//user.setEmail("1142645774@qq.com");
		user.setIsenabled(-1);
		//user.setPassword("1123");
		user.setPic("bbb.jpg");
		user.setUpdator(556);
		user.setRealname("测试员67");
		user.setSex("女");
		//user.setUpdator(1001);
		try {
			us.update(user);
		} catch (AppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void testadd(){
		TUserPo user = new TUserPo();
		
		user.setBirthday(new Date());
		//部门
		TDeptPo dept = new TDeptPo();
		dept.setId(4);
		user.setDept(dept);
		user.setEmail("1142645774@qq.com");
		user.setCreator(666);
		user.setPassword("1123");
		user.setPic("bbb.jpg");
		user.setLoginname("test7");
		user.setRealname("测试员67");
		user.setSex("女");
		try {
			us.insert(user);
		} catch (AppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void testPage(){
		QueryUser query = new QueryUser();
		query.setSex("女");
		System.out.println("当前总页数："+us.queryPageCount(query));
		for(TUserPo user:us.queryByPage(query, 1)){
			System.out.println(user.getId()+user.getLoginname());
		}
	}
	
	
}
