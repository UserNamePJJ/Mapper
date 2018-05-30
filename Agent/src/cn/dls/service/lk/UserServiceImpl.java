package cn.dls.service.lk;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.lk.UserMapper;
import cn.dls.entity.User;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;

	@Override
	public User login(String userName, String password) {
		// TODO Auto-generated method stub
		return userMapper.login(userName, password);
	}

	@Override
	public List<User> getUserList(String userName,String monetary) {
		// TODO Auto-generated method stub
		return userMapper.getUserList(userName,monetary);
	}

	@Override
	public List<User> getAgentList(String userName, String monetary) {
		// TODO Auto-generated method stub
		return userMapper.getAgentList(userName, monetary);
	}

	@Override
	public int delAgentById(int uid) {
		// TODO Auto-generated method stub
		return userMapper.delAgentById(uid);
	}

	
}
