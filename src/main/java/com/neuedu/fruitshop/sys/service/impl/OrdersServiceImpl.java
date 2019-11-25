package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.neuedu.fruitshop.entity.Orders;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.mapper.OrdersMapper;
import com.neuedu.fruitshop.sys.service.OrdersService;

@Controller
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
	private OrdersMapper ordersMapper;

	@Override
	public List<Orders> findListByPager(Pager<Orders> pager) {
		
		return ordersMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<Orders> pager) {
		
		return ordersMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(Orders object) {
		Result result = new Result(false,"新增订单失败！");
		boolean ret = ordersMapper.add(object);
		if(ret) {
			result = new Result(true,"新增订单成功！");
		}
		return result;
	}

	@Override
	public Result edit(Orders object) {
		Result result = new Result(false,"修改订单失败！");
		boolean ret = ordersMapper.edit(object);
		if(ret) {
			result = new Result(true,"修改订单成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<Orders> ids) {
		Result result = new Result(false,"修改订单失败！");
		boolean ret = ordersMapper.deleteByIds(ids);
		if(ret) {
			result = new Result(true,"修改订单成功！");
		}
		return result;
	}

}
