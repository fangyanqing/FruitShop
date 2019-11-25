package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.fruitshop.entity.OrderInfo;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.mapper.OrderInfoMapper;
import com.neuedu.fruitshop.sys.service.OrderInfoService;

@Service
public class OrderInfoServiceImpl implements OrderInfoService {
	
	@Autowired
	private OrderInfoMapper orderInfoMapper;

	@Override
	public List<OrderInfo> findListByPager(Pager<OrderInfo> pager) {
		
		return orderInfoMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<OrderInfo> pager) {
		
		return orderInfoMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(OrderInfo object) {
		Result result = new Result(false,"新增订单详情失败！");
		boolean ret = orderInfoMapper.add(object);
		if(ret) {
			 result = new Result(true,"新增订单详情成功！");
		}
		return result;
	}

	@Override
	public Result edit(OrderInfo object) {
		Result result = new Result(false,"修改订单详情失败！");
		boolean ret = orderInfoMapper.edit(object);
		if(ret) {
			 result = new Result(true,"修改订单详情成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<OrderInfo> ids) {
		Result result = new Result(false,"新增订单详情失败！");
		boolean ret = orderInfoMapper.deleteByIds(ids);
		if(ret) {
			 result = new Result(true,"新增订单详情成功！");
		}
		return result;
	}

}
