package test;

import javax.annotation.Resource;

//import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zgr.pack.entity.Result;
import org.zgr.pack.service.user.IUserService;

@Controller
@RequestMapping(value="/abc")
public class TestRedis {
	@Resource
	private IUserService userService;
	
	//@Test
	@RequestMapping(value="/ccc")
	public void  query(){
		System.out.println("-------------A");
		Result result=new Result();
		System.out.println("-------------B");
		result=userService.selectUserName("18114800144");
		System.out.println("=================="+result);
	}
}
