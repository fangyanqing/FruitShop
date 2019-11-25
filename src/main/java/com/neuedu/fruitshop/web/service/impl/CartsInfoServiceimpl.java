package com.neuedu.fruitshop.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.fruitshop.entity.Carts;
import com.neuedu.fruitshop.entity.CartsInfo;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.web.mapper.CartsInfoMapper;
import com.neuedu.fruitshop.web.service.CartsInfoService;

@Service
public class CartsInfoServiceimpl implements CartsInfoService{
	
	@Autowired
	private  CartsInfoMapper cartsInfoMapper;

	@Override
	public List<CartsInfo> findListByPager(Pager<CartsInfo> pager) {		
		return cartsInfoMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<CartsInfo> pager) {	
		return cartsInfoMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(CartsInfo cartsinfo) {		
		Result result = new Result(false, "新增管失败！");
		boolean ret = cartsInfoMapper.add(cartsinfo);
		if(ret) {
			result = new Result(false, "新增成功！");
		}
		return result;
	}

	@Override
	public Result edit(CartsInfo cartsinfo) {
		Result result = new Result(false, "修改失败！");
		boolean ret = cartsInfoMapper.edit(cartsinfo);
		if(ret) {
			result = new Result(false, "修改成功！");
		}
		return result;
	}

	@Override  
	public Result deleteByIds(List<CartsInfo> ids) {		
		Result result = new Result(false, "删除失败！");
		boolean ret = cartsInfoMapper.deleteByIds(ids);
		if(ret) {
			result = new Result(false, "删除成功！");
		}
		return result;
	}

	@Override
	public List<CartsInfo> findInfoByCart(Carts carts) {
		// TODO Auto-generated method stub
		return cartsInfoMapper.findInfoByCart(carts);
	}

	
}
