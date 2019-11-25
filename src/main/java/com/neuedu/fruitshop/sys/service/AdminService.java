package com.neuedu.fruitshop.sys.service;

import com.neuedu.fruitshop.entity.Admin;

/**
 * 
 * @author cyj
 *
 */
public interface AdminService extends SysBaseService<Admin> {

	/**
	 * 管理员后台登录
	 * @param admin
	 * @return
	 */
	public Admin login(Admin admin);
}
