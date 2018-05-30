package junit.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.ssm.entity.User;
import org.ssm.service.userService;

public class UserTest {
	
	@Test
	public void test() {
		ApplicationContext cox=new ClassPathXmlApplicationContext("applicationContext.xml");
		userService userservice=cox.getBean("user",userService.class);
		List<User> list=userservice.findall();
		for (User user : list) {
			System.out.println(user.getId()+"\t"+user.getName()+"\t"+user.getAddress());
		}
		
	}

}
