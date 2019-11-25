package com.neuedu.fruitshop.sys.service;

import java.util.List;

import com.neuedu.fruitshop.entity.Fruit;

/**
 * 
 * @author wsl
 *
 */
public interface FruitService extends SysBaseService<Fruit>{
	
	/**
	 * 前台首页
	 * 推荐商品板块--根据最新时间查询
	 * 
	 * @return
	 */
	public List<Fruit> findNewest();
	
	/**
	 * 前台首页
	 * 促销商品板块--根据价格查询
	 * @return
	 */
	public List<Fruit> findPromotion();
	
	/**
	 * 前台首页
	 * 当季水果板块--根据水果类型查询
	 * @return
	 */
	public List<Fruit> findByType(Integer typeId);
	
	/**
	 * 国产优选板块--根据供应商查询
	 * @return
	 */
	public List<Fruit> findByProvider(Integer providerId);
	
	/**
	 * 促销中心页面--根据价格查询
	 * @return
	 */
	public List<Fruit> findAllPromotion();
	
	/**
	 * 水果详情页面--根据水果id查询
	 * @param fruit
	 * @return
	 */
	public Fruit findByFruitId(Fruit fruitId);
	
}
