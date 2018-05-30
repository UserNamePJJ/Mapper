package cn.dls.service.lk;

import java.util.List;


import cn.dls.entity.User;

public interface UserService {
	/**
	 * 登录
	 * @param userName
	 * @param password
	 * @return
	 */
	User login(String userName, String password);
	
	/**
	 * 客户管理列表
	 * @param userName
	 * @param monetary
	 * @return
	 */
	List<User> getUserList(String userName ,String monetary);
	/**
	 * 客户管理列表
	 * @param userName
	 * @param monetary
	 * @return
	 */
	List<User> getAgentList(String userName ,String monetary);
	
	int delAgentById(int uid);
	
}
