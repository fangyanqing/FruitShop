package com.neuedu.fruitshop.sys.mapper;

import com.neuedu.fruitshop.entity.Admin;

/**
 * 
 * @author cyj
 *
 */
public interface AdminMapper extends SysBaseMapper<Admin> {

	/**
	 * 管理员后台登录
	 * @param admin
	 * @return
	 */
	public Admin login(Admin admin);
}
