package com.neuedu.fruitshop.sys.service;

import com.neuedu.fruitshop.entity.User;
/**
 * 会员信息管理
 * @author 黄海玲
 *
 */
public interface UserService  extends SysBaseService<User>{

	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public User login(User user);

	/**
	 * 检查用户名是否重复
	 * @param userName
	 * @return
	 */
	public User checkUserName(String userName);
	
	/**
	 * 按照用户Id查询
	 * @param userId
	 * @return
	 */
	public User findUserById(Integer userId);
	
	/**
	 * 修改用户密码
	 * @param user
	 * @return
	 */
	public Boolean editUserPwd(User user);
	

}
