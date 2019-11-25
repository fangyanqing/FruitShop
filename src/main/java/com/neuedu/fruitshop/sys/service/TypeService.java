package com.neuedu.fruitshop.sys.service;

import java.util.List;

import com.neuedu.fruitshop.entity.Type;

/**
 * 
 * @author wsl
 *
 */
public interface TypeService extends SysBaseService<Type> {
	public List<Type> findAll();

}
