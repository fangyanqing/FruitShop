package com.neuedu.fruitshop.sys.mapper;

import java.util.List;

import com.neuedu.fruitshop.entity.Fruit;


/**
 * 水果mapper接口
 * @author wsl
 *
 */
public interface FruitMapper extends SysBaseMapper<Fruit> {
	/**
	 * 推荐商品板块--根据最新时间查询
	 * 
	 * @return
	 */
	public List<Fruit> findNewest();
	
	/**
	 * 促销商品板块--根据价格查询
	 * @return
	 */
	public List<Fruit> findPromotion();
	
	/**
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
	 * 促销商品页面--根据价格查询
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
