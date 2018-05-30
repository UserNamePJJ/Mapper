package cn.dls.dao.lk;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.User;

@Repository
public interface UserMapper {
	/**
	 * 登录
	 * @param userName
	 * @param password
	 * @return
	 */
	public User login(@Param("username") String userName,@Param("userpassword") String password);
	
	/**
	 * 客户管理列表
	 * @param userName
	 * @param monetary
	 * @return
	 */
	public List<User> getUserList(@Param("username")String userName ,@Param("monetary")String monetary);
	
	/**
	 * 代理商管理列表
	 * @param userName
	 * @param monetary
	 * @return
	 */
	public List<User> getAgentList(@Param("username")String userName ,@Param("monetary")String monetary);
	
	/**
	 * 代理商 -.-  删除
	 * @param id
	 * @return
	 */
	public int delAgentById(int id);
	
}
