package com.neuedu.fruitshop.sys.mapper;

import com.neuedu.fruitshop.entity.User;
/**
 * 会员管理
 * @author 黄海玲
 *
 */
public interface UserMapper  extends SysBaseMapper<User>{
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
