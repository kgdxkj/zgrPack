package org.zgr.pack.controller.test;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.annotation.Resource;

import org.apache.http.conn.ssl.PrivateKeyDetails;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zgr.pack.service.test.ITestService;

@Controller
@RequestMapping(value="/test")
public class Test {
	
	@Resource
	private ITestService testService;
	
	//测试MyBatis数据库一级缓存脏数据
	@RequestMapping(value="/myBatisOneCache",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String testMyBatisOneCache(String id) {
		System.out.println("---------------测试MyBatis数据库一级缓存脏数据---------------");
		String str=testService.selectById(id);
		
		System.out.println("---------------结果---------------str="+str);
		
		
		return str;
	}
	
	//http://localhost:8080/zgrPack/test/myBatisOneCache?id=1
	
	
	
	
	public static void main(String[] args) {
		List<User> list=new ArrayList<User>();
		User user=new User();
		user.setAge(31);
		user.setName("d");
		user.setSal(8000.35);
		
		User user2=new User();
		user2.setAge(25);
		user2.setName("a");
		user2.setSal(6500.35);
		
	
		User user3=new User();
		user3.setAge(20);
		user3.setName("c");
		user3.setSal(7000.35);
		
		User user4=new User();
		user4.setAge(18);
		user4.setName("c");
		user4.setSal(3500.35);
		
		User user5=new User();
		user5.setAge(20);
		user5.setName("a");
		user5.setSal(3500.35);
		
		User user6=new User();
		user6.setAge(18);
		user6.setName("c");
		user6.setSal(1200.35);
		
		list.add(user);
		list.add(user2);
		list.add(user3);
		list.add(user4);
		list.add(user5);
		list.add(user6);
		System.out.println("----------------------------排序前-----------------------------------------");
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getName()+" | "+list.get(i).getAge()+" | "+list.get(i).getSal());
		}
		
		System.out.println("----------------------------排序后-----------------------------------------");
		
		 // 排序
        Collections.sort(list, new Comparator<User>() {
            @Override
            public int compare(User o1, User o2) {
            	//按名称排序
            	int flag=o1.getName().compareTo(o2.getName());   //这是升降，    o2.getName().compareTo(o1.getName()) ---》这是降序    （下面同理）
            	//按年龄排序
        		if(flag==0) {
        			flag=o1.getAge()-o2.getAge();
        		}
        		//按工资排序
        		if(flag==0) {
        			flag=(int)(o1.getSal()-o2.getSal());
        		}
        		return flag;
            }
        });
		

	
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getName()+" | "+list.get(i).getAge()+" | "+list.get(i).getSal());
		}
	}
}
