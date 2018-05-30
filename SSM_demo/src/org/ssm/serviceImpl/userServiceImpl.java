package org.ssm.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.ssm.dao.UserMapper;
import org.ssm.entity.User;
import org.ssm.service.userService;
@Service("user")
public class userServiceImpl implements userService {
	@Resource
        private UserMapper userMapper;
	@Override
	public List<User> findall() {
		// TODO Auto-generated method stub
		return userMapper.findall();
	}

}
