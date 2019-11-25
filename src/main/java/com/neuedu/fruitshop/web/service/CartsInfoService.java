package com.neuedu.fruitshop.web.service;

import java.util.List;

import com.neuedu.fruitshop.entity.Carts;
import com.neuedu.fruitshop.entity.CartsInfo;

public interface CartsInfoService extends BaseService<CartsInfo>{

	/**
	 * 根据购物车id查找
	 * @param carts
	 * @return
	 */
	public List<CartsInfo> findInfoByCart(Carts carts);
}
