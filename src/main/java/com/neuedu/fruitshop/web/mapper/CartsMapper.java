package com.neuedu.fruitshop.web.mapper;

import com.neuedu.fruitshop.entity.Carts;
import com.neuedu.fruitshop.entity.User;


/**
 * 购物车模块
 * @author 黄海玲
 *
 */
public interface CartsMapper extends WebBaseMapper<Carts>{
	
	/**
	 * 按照用户id进行查找
	 * @param carts
	 * @return
	 */
	public Carts findCartsByUser(User user);

}
