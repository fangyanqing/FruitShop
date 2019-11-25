package com.neuedu.fruitshop.web.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.fruitshop.entity.Carts;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.entity.User;
import com.neuedu.fruitshop.web.mapper.CartsMapper;
import com.neuedu.fruitshop.web.service.CartsService;

/**
 * 购物车模块
 * @author 黄海玲
 *
 */
@Service
@Transactional
public class CartsServiceimpl implements CartsService {
	
	  @Autowired
	private CartsMapper cartsMapper;

	@Override
	public List<Carts> findListByPager(Pager<Carts> pager) {
		return cartsMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<Carts> pager) {
		
		return cartsMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(Carts catrts) {
		Result result=new Result(false,"新增失败！");
		boolean ret=cartsMapper.add(catrts);
		if(ret) {
			result=new Result(true,"新增成功！");
		}
		return result;
	}

	@Override
	public Result edit(Carts carts) {
		Result result=new Result(false,"修改失败！");
		boolean ret=cartsMapper.edit(carts);
		if(ret) {
			result=new Result(true,"修改成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<Carts> ids) {
		
		Result result=new Result(false,"删除失败！");
		boolean ret=cartsMapper.deleteByIds(ids);
		if(ret) {
			result=new Result(true,"修改成功！");
		}
		return result;
	}

	@Override
	public Carts findCartsByUser(User user) {
		return cartsMapper.findCartsByUser(user);
	}

	














}
