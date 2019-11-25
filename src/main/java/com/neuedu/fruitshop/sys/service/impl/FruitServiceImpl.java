package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.fruitshop.entity.Fruit;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.mapper.FruitMapper;
import com.neuedu.fruitshop.sys.service.FruitService;
import com.neuedu.fruitshop.sys.service.SysBaseService;

/**
 * 
 * @author wsl
 *
 */
@Service
public class FruitServiceImpl implements FruitService {
	@Autowired
	private FruitMapper fruitMapper;

	@Override
	public List<Fruit> findListByPager(Pager<Fruit> pager) {
		// TODO Auto-generated method stub
		return fruitMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<Fruit> pager) {
		// TODO Auto-generated method stub
		return fruitMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(Fruit object) {
		Result result=new Result(false,"新增商品失败！");
		boolean ret=fruitMapper.add(object);
		if(ret) {
			result=new Result(true,"新增商品成功！");
		}
		return result;
	}

	@Override
	public Result edit(Fruit object) {
		Result result=new Result(false,"修改商品失败！");
		boolean ret=fruitMapper.edit(object);
		if(ret) {
			result=new Result(true,"修改商品成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<Fruit> ids) {
		Result result=new Result(false,"删除商品失败！");
		boolean ret=fruitMapper.deleteByIds(ids);
		if(ret) {
			result=new Result(true,"删除商品成功！");
		}
		return result;
	}

	/**
	 * 前台首页
	 * 推荐商品板块--根据最新时间查询
	 * 
	 * @return
	 */
	@Override
	public List<Fruit> findNewest() {
		// TODO Auto-generated method stub
		return fruitMapper.findNewest();
	}

	/**
	 * 前台首页
	 * 促销商品板块--根据价格查询
	 * @return
	 */
	@Override
	public List<Fruit> findPromotion() {
		// TODO Auto-generated method stub
		return fruitMapper.findPromotion();
	}

	/**
	 * 前台首页
	 * 当季水果板块--根据水果类型查询
	 * @return
	 */
	@Override
	public List<Fruit> findByType(Integer typeId) {
		// TODO Auto-generated method stub
		return fruitMapper.findByType(typeId);
	}

	/**
	 * 前台首页
	 * 国产优选板块--根据供应商查询
	 * @return
	 */
	@Override
	public List<Fruit> findByProvider(Integer providerId) {
		// TODO Auto-generated method stub
		return fruitMapper.findByProvider(providerId);
	}
    
	/**
	 * 水果详情页面--根据水果id查询
	 * @param fruit
	 * @return
	 */
	@Override
	public Fruit findByFruitId(Fruit fruitId) {
		// TODO Auto-generated method stub
		return fruitMapper.findByFruitId(fruitId);
	}

	
	/**
	 * 促销中心页面--根据价格查询
	 * @return
	 */
	@Override
	public List<Fruit> findAllPromotion() {
		// TODO Auto-generated method stub
		return fruitMapper.findAllPromotion();
	}

	
	

	
	

}
